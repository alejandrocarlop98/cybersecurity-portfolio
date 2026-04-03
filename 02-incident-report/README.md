# 🛡️ Incident Report Analysis – DDoS Attack (ICMP Flood)

##  Overview
This project documents the analysis of a Distributed Denial of Service (DDoS) attack targeting an internal corporate network. The incident involved an ICMP flood that disrupted network services for approximately two hours.

The analysis follows the **NIST Cybersecurity Framework (CSF)**, covering the five core functions:
- Identify
- Protect
- Detect
- Respond
- Recover

---

##  Objective
To analyze a real-world cybersecurity incident and develop a structured response and improvement plan aligned with industry standards.

---

##  Incident Summary
A DDoS attack exploited an **unconfigured firewall**, allowing a flood of ICMP packets to overwhelm the internal network. This resulted in:
- Network service disruption
- Loss of internal communication
- Temporary outage of critical systems

---

##  Key Findings
- Misconfigured firewall allowed unrestricted ICMP traffic
- Lack of rate limiting and traffic filtering
- No early detection mechanisms in place

---

##  Security Improvements Implemented
- ICMP rate limiting on firewall
- Source IP verification (anti-spoofing)
- Deployment of IDS/IPS
- Network traffic monitoring tools
- Improved security policies and staff awareness

---

##  Repository Structure
02-incident-report/
│
├── README.md
├── scenario.md
├── incident-report.md


---

##  Scenario
The full scenario can be found here:  
➡️ [View Scenario](./scenario.md)

---

##  Full Analysis
Detailed incident analysis based on the NIST CSF:  
➡️ [View Report](./incident-report.md)

---

##  Skills Demonstrated
- Incident Analysis
- Network Security
- Threat Identification
- NIST Cybersecurity Framework (CSF)
- Security Controls Implementation
- Technical Documentation

---

##  Author
**Alejandro Cardona López**  
Cybersecurity Analyst (Aspiring SOC Analyst)

---

##  Notes
This project highlights the importance of proactive security controls, monitoring, and incident response planning in defending against modern cyber threats.
