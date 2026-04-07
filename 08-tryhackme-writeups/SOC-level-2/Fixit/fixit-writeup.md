# 🔐 FIXIT — TryHackMe Write-up

## Room Info

| Field | Details |
|---|---|
| **Room** | FIXIT |
| **Platform** | TryHackMe |
| **Path** | SOC Level 1 |
| **Difficulty** | Medium |
| **Category** | Blue Team / SIEM / Log Analysis |
| **Completed** | April 2026 |
| **Room URL** | https://tryhackme.com/room/fixit |

---

## Objective

This room focuses on diagnosing and resolving ingestion issues within a Splunk deployment. The scenario presents a broken Splunk app called FIXIT where raw log data is not being parsed correctly — Splunk cannot determine where one event ends and the next begins, making the data impossible to analyze.

> "The room is structured in three progressive phases: fix event boundary definitions so Splunk can correctly parse incoming records, extract custom fields from the raw logs using Splunk configuration files, and finally analyze the properly structured data to answer investigative questions about network activity."

---

## Tools Used

| Tool | Purpose |
|---|---|
| `Splunk` | Log analysis, field extraction, and SPL search queries |
| `nano` | Creating and editing Splunk `.conf` configuration files |
| `find` | Locating files and directories within the Splunk app structure |
| `ls` / `cd` | File system navigation |
| `sudo su` | Privilege escalation to edit restricted Splunk config files |

---

## Process

> This section documents the step-by-step methodology applied during each phase of the room.

### Phase 1 — Fixing Event Boundaries

#### Task 1 — Locating the FIXIT App Directory

The room provides the base Splunk installation path. Starting from there, I navigated the file system to locate the FIXIT app:

```bash
cd /opt/splunk/
ls etc/apps
```

The FIXIT app appeared in the listing. Since I was already working from `/opt/splunk/`, I constructed the full path by combining the base with the subfolder I browsed to.

**Finding:** The full path to the FIXIT app directory is confirmed under Splunk's `etc/apps` folder.

---

#### Task 2 — Locating the network-logs Script

To investigate the `inputs.conf` configuration file of the FIXIT app, I navigated to the app directory. Access was initially denied, so I elevated privileges first:

```bash
sudo su
find /opt/splunk/etc/apps/fixit -name "*network*logs*"
```

This returned the exact path to the `network-logs` script as referenced in `inputs.conf`.

**Finding:** The `find` command located the network-logs script path within the FIXIT app structure.

---

#### Task 3 — Defining Event Boundaries

After visually inspecting the raw logs in the Splunk interface, I confirmed that every event began with the token `[Network-log]`. Using knowledge from prerequisite rooms, I identified `BREAK_ONLY_BEFORE` as the correct stanza — it instructs Splunk to start a new event whenever the defined pattern is matched.

I created a new `props.conf` file in the app's default configuration folder:

```bash
cd /opt/splunk/etc/apps/fixit/default
nano props.conf
```

The configuration used `BREAK_ONLY_BEFORE` with a regex anchored on the `[Network-log]` token:

```ini
BREAK_ONLY_BEFORE = \[Network-log\]:
```

**Finding:** Event boundaries were successfully fixed. The `BREAK_ONLY_BEFORE` stanza with the `\[Network-log\]:` regex pattern correctly delimited each log entry.

---

### Phase 2 — Custom Field Extraction

With events now properly delimited, the next phase required extracting structured fields from the raw log text. This involved creating three Splunk configuration files.

#### Task 4 — Creating transforms.conf

I reviewed the sample log format provided in the room to understand the data structure, then drafted the regex-based extraction in `transforms.conf`:

```bash
nano /opt/splunk/etc/apps/fixit/default/transforms.conf
```

The file defined a `REGEX`-based extraction to pull fields such as `Domain`, `Username`, `URI`, and `source_IP` from each raw log line.

---

#### Task 5 — Creating fields.conf

To register the extracted values as proper Splunk fields, I created `fields.conf` declaring each one:

```bash
nano /opt/splunk/etc/apps/fixit/default/fields.conf
```

---

#### Task 6 — Updating props.conf and Restarting Splunk

`props.conf` was updated to reference the newly created transform, linking the source type to the extraction logic. After saving all configuration files, Splunk was restarted to apply the changes:

```bash
/opt/splunk/bin/splunk restart
```

**Finding:** All three configuration files were created successfully. Splunk restarted cleanly with the new field extraction in effect.

---

### Phase 3 — Network Traffic Analysis

With properly parsed events and custom fields available, this phase consisted of querying the data through the Splunk search interface to answer investigative questions.

#### Task 7 — Analyzing Domain, Username, and URI Fields

After confirming the field extraction was working, I navigated to the FIXIT app in the Splunk web UI and used the field sidebar to review distinct values for `Domain`, `Username`, and `URI`. For the `/products` page count, I filtered searches to isolate URIs containing that path segment and counted the distinct values.

**Finding:** All field values were accessible directly from the Splunk field browser once extraction was correctly configured.

---

#### Task 8 — Most Active User

By reviewing the `Username` field distribution in Splunk, I identified the account that appeared in the greatest number of events across the log dataset.

**Finding:** The most active user was identifiable directly from the field value frequency count in Splunk.

---

#### Task 9 — IP Range Analysis

Reviewing the `source_IP` field values, I identified three distinct IP ranges present in the network traffic data, confirming three unique network segments in the observed activity.

**Finding:** Three unique IP ranges were found in the `source_IP` field.

---

#### Task 10 — Tracking Access to a Sensitive File

To identify who accessed `secret-document.pdf`, I used a targeted SPL query combining the index with a wildcard URI match:

```spl
index=main URI="*secret-document.pdf"
```

The results returned a single event, revealing the username associated with the access.

**Finding:** The targeted search successfully identified the user responsible for accessing `secret-document.pdf`.

---

## Key Findings

| Task | Key Finding | Technique Used |
|---|---|---|
| Task 1 | Located the FIXIT app path within Splunk's `etc/apps` directory | File system navigation (`ls`, `cd`) |
| Task 2 | Located the `network-logs` script referenced in `inputs.conf` | `find` command with partial name match |
| Task 3 | Events start with `[Network-log]` — fixed using `BREAK_ONLY_BEFORE` | `props.conf` + regex configuration |
| Task 4–6 | Extracted `Domain`, `Username`, `URI`, `source_IP` as structured fields | `transforms.conf`, `fields.conf`, `props.conf` |
| Task 7 | Identified all URI values including the one without a file extension | Splunk field browser + search filter |
| Task 8 | Identified the most active user by event frequency | Splunk field value distribution |
| Task 9 | Found 3 unique IP ranges in the observed network traffic | `source_IP` field inspection |
| Task 10 | Traced the user who accessed `secret-document.pdf` | Targeted SPL: `index=main URI="*secret-document.pdf"` |

---

## Lessons Learned

- **What concept did I not know before this room?**
The exact mechanics of Splunk event boundary definition using `BREAK_ONLY_BEFORE` in `props.conf`. I understood the concept abstractly, but this room made it tangible by showing what broken ingestion actually looks like — events bleeding into each other and becoming unanalyzable.

- **What tool or technique did I practice for the first time?**
Writing Splunk configuration files manually from the CLI. Understanding how `props.conf`, `transforms.conf`, and `fields.conf` work together as a three-file system — each with a distinct role in the ingestion pipeline — was a key hands-on milestone.

- **What would I do differently next time?**
Before writing any `.conf` file, I would map out the full log structure first and identify all extractable fields upfront. I would also validate changes incrementally — restart Splunk and verify one field at a time — rather than writing all files and restarting at the end.

- **How does this apply to a real SOC Analyst role?**
In a production environment, malformed or undelimited log ingestion is a critical issue — it directly undermines alert accuracy, dashboard reliability, and incident timelines. An analyst who can diagnose and resolve ingestion problems prevents blind spots in monitoring coverage. Custom field extraction is equally essential: without structured fields like `Username`, `URI`, `source_IP`, and `Domain`, writing meaningful correlation rules or detection queries is nearly impossible. This room simulates exactly the kind of data normalization work that underpins effective SIEM operations.

> "This room reinforced how foundational data quality is in SIEM work. Clean, well-structured log data is not a given — it must be deliberately engineered. These skills map directly to the responsibilities of a Tier 1/Tier 2 SOC Analyst or a Splunk administrator maintaining data pipeline health."

---

## References

- [TryHackMe — FIXIT Room](https://tryhackme.com/room/fixit)
- [Splunk Docs — props.conf Reference](https://docs.splunk.com/Documentation/Splunk/latest/Admin/Propsconf)
- [Splunk Docs — transforms.conf Reference](https://docs.splunk.com/Documentation/Splunk/latest/Admin/Transformsconf)
- [Splunk Docs — Configure event line breaking](https://docs.splunk.com/Documentation/Splunk/latest/Data/Configureeventlinebreaking)
