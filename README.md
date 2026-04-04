# 🔐 Cybersecurity Portfolio — Alejandro Cardona

[![CompTIA Security+](https://img.shields.io/badge/CompTIA-Security%2B-CC0000?style=flat&logo=comptia&logoColor=white)]()
[![ISC2 CC](https://img.shields.io/badge/ISC2-Certified%20in%20Cybersecurity-006400?style=flat&logoColor=white)]()
[![Google](https://img.shields.io/badge/Google-Cybersecurity%20Certificate-4285F4?style=flat&logo=google&logoColor=white)]()
[![IBM](https://img.shields.io/badge/IBM-Cybersecurity%20Certificate-054ADA?style=flat&logo=ibm&logoColor=white)]()
[![TryHackMe](https://img.shields.io/badge/TryHackMe-SOC%20Level%201-212C42?style=flat&logo=tryhackme&logoColor=white)]()
[![Splunk](https://img.shields.io/badge/Splunk-Search%20Expert%20Specialization-000000?style=flat&logo=splunk&logoColor=white)]()
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Alejandro%20Cardona-0077B5?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/alejandro-cardona13080998/)

---

## 👤 About Me

Cybersecurity analyst with multiple industry certifications and hands-on technical experience across Blue Team operations, incident response, vulnerability management, and security automation. Background in business administration provides a unique perspective on how security decisions impact organizational risk, regulatory compliance, and business continuity.

Certified across the four most recognized entry-to-mid-level frameworks in the industry — **CompTIA Security+**, **ISC2 CC**, **Google**, and **IBM** — combined with practical platform experience through **TryHackMe SOC Level 1** and **Splunk Search Expert Specialization**.

**Core focus areas:**
`Incident Response` `Threat Detection` `Vulnerability Assessment` `SIEM Operations` `Security Automation` `Log Analysis` `Access Control`

**Tools & Technologies:**
`Splunk` `Linux` `Python` `SQL` `Wireshark` `Nmap` `Suricata` `SIEM`

**Frameworks & Standards:**
`NIST CSF` `NIST SP 800-30` `NIST SP 800-53` `PCI DSS` `GDPR` `SOC Type 1 & 2` `ISO 27001`

📍 Colombia · 🌐 Bilingual: English / Spanish

---

## 🎓 Certifications

| Certification | Issuer | Level |
|---|---|---|
| CompTIA Security+ | CompTIA | ⭐⭐⭐ Industry Standard |
| Certified in Cybersecurity (CC) | ISC2 | ⭐⭐⭐ Industry Standard |
| SOC Level 1 Path | TryHackMe | ⭐⭐ Hands-on |
| SAL1 — Security Analyst Level 1 | TryHackMe | ⭐⭐ Hands-on |
| Splunk Search Expert Specialization | Splunk | ⭐⭐ Specialized |
| Google Cybersecurity Professional Certificate | Google / Coursera | ⭐⭐ Professional |
| IBM Cybersecurity Analyst Certificate | IBM / Coursera | ⭐⭐ Professional |
| Cybersecurity 101 | TryHackMe | ⭐ Foundational |

> CompTIA Security+ and ISC2 CC are globally recognized vendor-neutral certifications validating baseline security competency — among the most requested credentials for SOC Analyst and Security Analyst roles.

---

## 📁 Portfolio Structure

```
cybersecurity-portfolio/
│
├── 01-security-audit/              # Internal audit — Botium Toys (NIST CSF)
├── 02-incident-report/             # DDoS attack analysis (NIST CSF)
├── 03-vulnerability-assessment/    # Risk assessment — small business (NIST SP 800-30)
├── 04-incident-journal/            # Ransomware incident documentation (5 W's)
├── 05-sql-filters/                 # SQL log analysis — security investigation
├── 06-linux-permissions/           # File system hardening (chmod, ls -la)
├── 07-python-algorithm/            # IP allow list automation (Python)
└── 08-tryhackme-writeups/          # CTF write-ups — SOC Level 1 path (in progress)
```

---

## 🗂️ Projects

### 01 · Security Audit — Botium Toys
**Frameworks:** NIST CSF · PCI DSS · GDPR · SOC Type 1 & 2

Conducted a full internal security audit for a small U.S. retail company with a growing online presence. Assessed existing controls across administrative, technical, and physical categories. Identified critical gaps including missing encryption, no IDS, lack of least privilege, and absence of disaster recovery plans. Produced a prioritized compliance checklist covering PCI DSS, GDPR, and SOC requirements.

**Risk Score:** 8/10 · **Controls missing:** 9 · **Compliance gaps:** PCI DSS, GDPR, SOC

→ [`01-security-audit/`](./01-security-audit/)

---

### 02 · Incident Report Analysis — DDoS Attack
**Frameworks:** NIST CSF (Identify · Protect · Detect · Respond · Recover)

Analyzed a DDoS attack via ICMP flood that caused a full network outage. Applied all five NIST CSF functions to structure the response — from asset identification and firewall hardening to IDS/IPS deployment and cloud redundancy recommendations. Includes reflective analysis of the attack lifecycle and defense-in-depth strategy.

→ [`02-incident-report/`](./02-incident-report/)

---

### 03 · Vulnerability Assessment — Small Business
**Framework:** NIST SP 800-30 Rev. 1

Assessed a publicly accessible database server for a small business. Built a risk matrix with three threat actor profiles (external hacker, malicious insider, competitor), scoring probability and severity on a 1–3 scale. Recommended remediation strategy includes MFA, RBAC, IP allowlisting, TLS encryption, and security awareness training.

→ [`03-vulnerability-assessment/`](./03-vulnerability-assessment/)

---

### 04 · Incident Handler's Journal — Ransomware Attack
**Methodology:** Incident Handler's Journal · 5 W's

Documented a ransomware attack on a U.S. healthcare clinic using structured journal methodology. The attack was initiated via a targeted phishing campaign that installed malware on employee endpoints, ultimately encrypting critical patient records. Includes reflective analysis identifying gaps in backup validation and endpoint detection.

→ [`04-incident-journal/`](./04-incident-journal/)

---

### 05 · Apply Filters to SQL Queries
**Skills:** SQL · Log Analysis · Threat Investigation

Used SQL `WHERE` clauses with `AND`, `OR`, `NOT`, and `LIKE` operators to investigate suspicious login activity and support targeted system update rollouts. Six scenarios: after-hours failed logins, specific date ranges, logins outside Mexico, and employee group filtering by department and location.

→ [`05-sql-filters/`](./05-sql-filters/)

---

### 06 · File Permissions in Linux
**Skills:** Linux CLI · Access Control · Least Privilege

Audited and corrected file system permissions for a research team environment. Used `ls -la` to identify over-permissive settings on files, hidden files, and directories. Applied `chmod` to enforce least privilege — removing unauthorized write access and restricting directory permissions to owner-only.

→ [`06-linux-permissions/`](./06-linux-permissions/)

---

### 07 · Algorithm for File Updates in Python
**Skills:** Python · File Automation · Access Control

Developed a Python algorithm to automate IP allow list maintenance for a healthcare company's restricted subnetwork. The script opens a file, parses IP addresses, compares against a remove list, and rewrites the updated authorized IP list — automating a critical access revocation workflow end-to-end.

→ [`07-python-algorithm/`](./07-python-algorithm/)

---

### 08 · TryHackMe Write-ups *(In Progress)*
**Path:** SOC Level 1 · Cybersecurity 101 · SAL1

Practical lab walkthroughs from TryHackMe, organized by learning path. Each write-up documents the objective, tools used, step-by-step methodology, key findings, and lessons learned. Covers Blue Team fundamentals through to SOC analyst-level skills including SIEM triage, network traffic analysis, and threat intelligence.

→ [`08-tryhackme-writeups/`](./08-tryhackme-writeups/) *(coming soon)*

---

## 🛠️ Skills Matrix

| Domain | Skills |
|---|---|
| **Incident Response** | Incident documentation, NIST CSF, 5 W's methodology, IR lifecycle |
| **SIEM & Log Analysis** | Splunk Search Expert, log filtering, SQL queries, alert triage |
| **Vulnerability Management** | Risk assessment, NIST SP 800-30, threat modeling, risk scoring |
| **Security Auditing** | Controls assessment, compliance checklist, PCI DSS, GDPR, SOC |
| **Network Security** | DDoS analysis, firewall rules, IDS/IPS, Wireshark, Suricata |
| **Linux** | File permissions, `chmod`, `ls -la`, access control hardening |
| **Python** | File I/O, list operations, loops, security automation |
| **Frameworks** | NIST CSF, NIST SP 800-30, NIST SP 800-53, PCI DSS, GDPR, ISO 27001 |

---

## 📬 Contact

- 💼 [LinkedIn](https://www.linkedin.com/in/alejandro-cardona13080998/)
- 📧 alejandrocarlop98@gmail.com

---

*All projects are based on real-world scenarios using industry-standard frameworks. Actively building toward a SOC Analyst or Security Analyst role — open to entry-level and junior opportunities.*
