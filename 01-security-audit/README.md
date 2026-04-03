# 🛡️ Security Audit — Botium Toys

## Scenario

Botium Toys is a small U.S. business with a growing online presence serving customers in the U.S. and E.U. The IT department is under pressure to support the business while ensuring compliance with regulations governing online payments and business operations in the European Union.

The IT manager requested an internal security audit to assess the company's current security posture, identify gaps in controls, and ensure compliance with applicable regulations (PCI DSS, GDPR, SOC type 1 & 2).

---

## Scope & Goals

**Scope:** The entire security program at Botium Toys — all assets, internal processes, and procedures related to the implementation of controls and compliance best practices.

**Goals:**
- Assess existing assets managed by the IT department
- Complete a controls and compliance checklist
- Identify which controls and compliance best practices need to be implemented to improve the organization's security posture

---

## Risk Assessment Summary

| Item | Detail |
|---|---|
| Risk Score | **8 / 10** (High) |
| Root Cause | Inadequate asset management, missing controls, partial compliance |
| Primary Impact | Potential fines from regulatory bodies (PCI DSS, GDPR), data loss, unauthorized access to cardholder data and PII/SPII |

### Key Risk Findings
- All employees have unrestricted access to internally stored data, including cardholder data and PII/SPII
- No encryption in use for customer credit card data (at rest or in transit)
- No disaster recovery plans or data backups in place
- Least privilege and separation of duties not implemented
- No IDS deployed
- Weak password policy with no centralized password management system
- Legacy systems lack a scheduled maintenance and intervention plan

---

## Controls Assessment

### ✅ Controls Currently in Place

| Control | Type | Notes |
|---|---|---|
| Firewall | Technical – Preventative | Configured with appropriate security rules |
| Antivirus software | Technical – Corrective | Installed and actively monitored |
| Physical locks | Physical – Preventative | Offices, storefront, and warehouse secured |
| CCTV surveillance | Physical – Preventative/Detective | Active in all relevant locations |
| Fire detection/prevention | Physical – Deterrent | Systems installed and operational |

### ❌ Controls Missing / Needs Implementation

| Control | Type | Priority | Reason |
|---|---|---|---|
| Least Privilege | Administrative – Preventative | 🔴 High | All employees access sensitive data |
| Separation of duties | Administrative – Preventative | 🔴 High | Increases risk of insider threat/fraud |
| Encryption | Technical – Deterrent | 🔴 High | Credit card and PII data unprotected |
| IDS/IPS | Technical – Detective | 🔴 High | No detection of malicious activity |
| Backups | Technical – Corrective | 🔴 High | No data recovery capability |
| Disaster recovery plans | Administrative – Corrective | 🔴 High | Business continuity at risk |
| Password policy (enforcement) | Administrative – Preventative | 🟡 Medium | Weak requirements, no complexity standards |
| Password management system | Technical – Preventative | 🟡 Medium | No centralized management in place |
| Legacy system maintenance schedule | Technical – Preventative | 🟡 Medium | No defined procedures or schedule |
| Access control policies | Administrative – Preventative | 🟡 Medium | Not formally implemented |

---

## Compliance Checklist

###  PCI DSS

| Best Practice | Status | Notes |
|---|---|---|
| Only authorized users access cardholder data | ❌ | All employees have access |
| Credit card data stored/transmitted securely | ❌ | No encryption or segmentation |
| Data encryption implemented | ❌ | Not in use |
| Secure password management policies | ❌ | Weak policy, no enforcement |

###  GDPR

| Best Practice | Status | Notes |
|---|---|---|
| E.U. customer data kept private/secured | ❌ | No encryption or access controls |
| Breach notification plan within 72 hours | ✅ | Plan exists and is documented |
| Data properly classified and inventoried | ❌ | Assets listed but not classified |
| Privacy policies enforced | ✅ | Policies in place across departments |

###  SOC Type 1 & 2

| Best Practice | Status | Notes |
|---|---|---|
| User access policies established | ❌ | No least privilege or separation of duties |
| PII/SPII confidentiality ensured | ❌ | No encryption or advanced protection |
| Data integrity maintained | ✅ | Consistent and validated by IT |
| Data available only to authorized users | ❌ | All employees have access regardless of role |

---

## Recommendations

Based on the audit findings, the following immediate actions are recommended:

1. **Implement least privilege and separation of duties** — Restrict access to sensitive data based on job roles. This single change addresses multiple compliance gaps across PCI DSS and SOC simultaneously.

2. **Deploy encryption** — Encrypt all customer credit card and PII/SPII data at rest and in transit. This is the most critical gap given regulatory exposure.

3. **Establish a backup and disaster recovery plan** — Define RTO/RPO targets, implement automated backups, and test recovery procedures regularly.

4. **Deploy an IDS/IPS** — The absence of intrusion detection means current threats go unnoticed. Priority for network perimeter and endpoints.

5. **Upgrade password policy and deploy a password manager** — Enforce minimum complexity standards and centralize password management to reduce credential-based attack surface.

6. **Classify and inventory all assets** — Proper classification is required for GDPR compliance and enables risk-based prioritization of security controls.

---

## Frameworks & Standards Referenced

- NIST Cybersecurity Framework (CSF) — Identify function
- PCI DSS (Payment Card Industry Data Security Standard)
- GDPR (General Data Protection Regulation)
- SOC Type 1 & Type 2

---

## Files

| File | Description |
|---|---|
| `docs/botium-toys-scope-goals-risk-assessment.docx` | Full scope, asset inventory, and risk assessment report |
| `docs/controls-and-compliance-checklist.docx` | Completed controls and compliance checklist with findings |
| `docs/control-categories.docx` | Reference document: control categories and types |
