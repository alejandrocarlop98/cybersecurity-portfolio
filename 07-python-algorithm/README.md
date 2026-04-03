# 🐍 Algorithm for File Updates in Python

## Overview

A Python algorithm was developed to automate the maintenance of an IP allow list for a healthcare company's restricted subnetwork. The script reads the current allow list from a file, removes any IP addresses flagged for revocation, and rewrites the file with the updated set of authorized addresses — eliminating manual errors and enforcing access control policies consistently.

---

## Scenario

> See [`scenario.md`](./scenario.md) for full context.

Employees are granted access to restricted content (personal patient records) based on their IP address. When authorization is revoked, the employee's IP must be removed from the allow list promptly. This algorithm automates that revocation workflow end-to-end.

---

## The Algorithm

> Full source code: [`update_allow_list.py`](./update_allow_list.py)

The algorithm follows five sequential phases:

```
Read file → Parse string → Iterate list → Remove IPs → Rewrite file
```

---

## Phases Breakdown

### Phase 1 — Open the Allow List File

```python
with open(import_file, "r") as file:
    ip_addresses = file.read()
```

![Open file with open()](./screenshots/01-open-file.png)

The `with` statement ensures the file is opened securely and automatically closed when the block completes — even if an error occurs. Opening in `"r"` (read mode) communicates clear intent: this is the data ingestion phase. No modifications are made at this stage.

---

### Phase 2 — Read and Parse the File Contents

```python
ip_addresses = ip_addresses.split()
```

![Read and split file contents](./screenshots/02-read-file-contents.png)

The `.read()` method loads the entire file into a single string. The `.split()` method then separates the string on whitespace, converting it into a structured list where each IP address is an individual element — the normalization phase of the workflow.

---

### Phase 3 — Iterate Through the Allow List

```python
for element in ip_addresses:
    print(element)
```

![Iterate through ip_addresses](./screenshots/03-iterate-remove-list.png)

A `for` loop traverses every IP address in the list, assigning each to the variable `element`. Printing each element during development serves as a debugging and validation step to confirm the loop is correctly traversing the list.

---

### Phase 4 — Remove Unauthorized IP Addresses

```python
for element in ip_addresses:
    if element in remove_list:
        ip_addresses.remove(element)
```

![Remove IPs found in remove_list](./screenshots/04-remove-ip-addresses.png)

This is the enforcement phase. For each IP in the allow list, the condition checks whether it appears in the `remove_list`. If `True`, `.remove(element)` deletes it from the list in place. Since allow lists contain unique values, one removal per match is sufficient.

---

### Phase 5 — Rewrite the File with the Updated List

```python
ip_addresses = "\n".join(ip_addresses)

with open(import_file, "w") as file:
    file.write(ip_addresses)
```

![Rewrite updated allow list to file](./screenshots/05-update-file.png)

`.join()` converts the cleaned list back into a formatted string, placing each IP on a new line to preserve the original file structure. The file is reopened in `"w"` (write mode), which truncates the previous contents and overwrites it with the revised allow list — the commit phase. The system now reflects the most current set of approved IPs.

---

## Summary

| Phase | Operation | Method |
|---|---|---|
| 1 — Open | Secure file access | `with open(file, "r")` |
| 2 — Read & Parse | Load and normalize data | `.read()` + `.split()` |
| 3 — Iterate | Traverse the allow list | `for` loop |
| 4 — Remove | Enforce revocations | `.remove()` + `if` condition |
| 5 — Rewrite | Persist updated list | `.join()` + `with open(file, "w")` |

By automating this critical access-control task, the algorithm reduces human error, enforces policy consistency, and provides a reusable function that can be integrated into larger security workflows.

---

## Skills Demonstrated

| Skill | Applied |
|---|---|
| Python file handling (`open`, `read`, `write`) | ✅ |
| String parsing (`.split()`, `.join()`) | ✅ |
| List iteration and conditional logic | ✅ |
| Security automation (access control) | ✅ |
| Principle of least privilege | ✅ |
| Safe file handling (`with` statement) | ✅ |

---

## Files

| File | Description |
|---|---|
| `scenario.md` | Full scenario context and security relevance |
| `update_allow_list.py` | Python source code for the algorithm |
| `screenshots/` | Terminal and code output captures for each phase |
| `docs/algorithm-for-file-updates-in-python.docx` | Original project write-up |
