# Incident Handler's Journal — Completed

## Scenario

A small U.S. healthcare clinic specializing in primary-care services experienced a ransomware attack on Tuesday, September 9th, 2025, at approximately 9:00 a.m. The incident resulted in a complete disruption of business operations after employees were unable to access computers, medical records, and the software required to perform their duties.

Upon attempting to access their systems, employees discovered ransom notes displayed on their screens. The notes identified the perpetrators as an organized group of cybercriminals known for targeting organizations in the healthcare and transportation industries. The attackers demanded a large sum of money in exchange for a decryption key to restore access to the encrypted files.

### Attack Vector

The threat actors gained initial access through a targeted phishing campaign directed at multiple employees. The phishing emails contained malicious attachments which, once downloaded, installed malware on the affected endpoints. After establishing a foothold within the internal network, the attackers deployed ransomware that encrypted critical files — including patient records — rendering them completely inaccessible.

### Business Impact

The encryption of critical patient data forced the clinic to shut down all computer systems, halting operations entirely. The organization was subsequently required to contact external authorities and technical assistance providers to begin incident response and recovery efforts.

---

## Incident Journal Entry

| Field | Details |
|---|---|
| **Date** | Tuesday, September 9th, 2025 |
| **Entry** | #20250909-001 |
| **Description** | Ransomware attack at a small U.S. healthcare clinic that disrupted operations and encrypted critical patient files |
| **Tools Used** | Antivirus Software · SIEM Monitoring · Email Filtering System |

---

## The 5 W's

| | Question | Finding |
|---|---|---|
| **Who** | Who caused the incident? | An organized group of cybercriminals known for targeting the healthcare and transportation sectors |
| **What** | What happened? | A phishing campaign led to malware installation and subsequent ransomware deployment, encrypting essential medical files |
| **When** | When did the incident occur? | Tuesday morning, September 9th, 2025, at approximately 09:00 a.m. |
| **Where** | Where did the incident happen? | Within the healthcare clinic's internal IT network and computer systems |
| **Why** | Why did the incident happen? | Employees were deceived into downloading malicious email attachments, which granted attackers initial access to the environment |

---

## Additional Notes & Reflections

The incident underscores the critical need for organization-wide cybersecurity awareness training and more robust email filtering controls to detect and block phishing attempts before they reach end users.

It also raises two key questions regarding the organization's preparedness and response readiness:

> *Were reliable data backups available and regularly tested to ensure business continuity without paying the ransom?*

> *What additional network monitoring or endpoint detection measures could have identified the phishing attack or malware installation at an earlier stage?*

These questions should be addressed as part of the post-incident review to strengthen the organization's security posture and prevent recurrence.
