# **Controls and compliance checklist**

**Controls assessment checklist**

 

| Yes | No | Control | Explanation |
| :---: | :---: | ----- | ----- |
|  | X | Least Privilege | All employees currently have access to sensitive customer data. Access privileges must be restricted based on job roles to reduce the risk of internal breaches. |
|  | X | Disaster recovery plans | There are no disaster recovery plans in place. This exposes the company to extended downtime and data loss in case of incidents. |
|  | X | Password policies | The current passwords policy is weak, lacking complexity requirements. This increases vulnerability to brute force or dictionary attacks. |
|  | X | Separation of duties | Not currently implemented. Shared roles increase the risk of unauthorized access and fraud. |
| X |  | Firewall | A properly configured firewall is in place to block unauthorized traffic. |
|  | X | Intrusion detection system (IDS) | The IT department has not implemented an IDS to detect or alert on malicious activity. |
|  | X | Backups | There are no backups of critical data, posing a high risk of data loss. |
| X |  | Antivirus software | Antivirus software is installed and actively monitored by IT. |
|  | X | Manual monitoring, maintenance, and intervention for legacy systems | Legacy systems are monitored but lack a scheduled maintenance plan and defined intervention procedures. |
|  | X | Encryption | Customer credit card and sensitive data are not encrypted, leaving them exposed to unauthorized access. |
|  | X | Password management system | There is no centralized passwords management system, which leads to inefficiencies and security issues. |
| X |  | Locks (offices, storefront, warehouse) | Physical locks are in place and functional. |
| X |  | Closed-circuit television (CCTV) surveillance | CCTV surveillance is active in all relevant physical locations. |
| X |  | Fire detection/prevention (fire alarm, sprinkler system, etc.) | Fire detection and suppression systems are installed and operational. |

**Compliance checklist**

Payment Card Industry Data Security Standard (PCI DSS)

| Yes | No | Best practice | Explanation |
| :---: | :---: | ----- | ----- |
|  | X | Only authorized users have access to customers’ credit card information.  | All employees have access to internal systems containing cardholder data, increasing risk. |
|  | X | Credit card information is stored, accepted, processed, and transmitted internally, in a secure environment. | Credit card data is neither encrypted nor adequately segmented from general employee access. |
|  | X | Implement data encryption procedures to better secure credit card transaction touchpoints and data.  | No encryption is currently used for customer financial data. |
|  | X | Adopt secure password management policies. | Weak password policy and no centralized management in place. |

General Data Protection Regulation (GDPR)

| Yes |  No | Best practice | Explanation |
| :---: | :---: | ----- | ----- |
|  | X | E.U. customers’ data is kept private/secured. | Lack of encryption and access controls undermine confidentiality. |
| X |  | There is a plan in place to notify E.U. customers within 72 hours if their data is compromised/there is a breach. | A plan is in place to notify EU users in case of data breaches. |
|  | X | Ensure data is properly classified and inventoried. | Assets are listed, but not classified to reflect sensitivity or regulatory requirements. |
| X |  | Enforce privacy policies, procedures, and processes to properly document and maintain data. | Policies exist and are followed by IT and other departments. |

System and Organizations Controls (SOC type 1, SOC type 2\) 

| Yes |   No | Best practice | Explanation |
| :---: | :---: | ----- | ----- |
|  | X | User access policies are established. | Lack of least privilege and separation of duties shows access is not properly managed. |
|  | X | Sensitive data (PII/SPII) is confidential/private. | No encryption or advanced protection mechanisms for PII/SPII are currently used. |
| X |  | Data integrity ensures the data is consistent, complete, accurate, and has been validated. | Data is consistent and IT maintains integrity measures. |
|  | X | Data is available to individuals authorized to access it. | All employees currently have access, regardless of job need. |

---

This section is *optional* and can be used to provide a summary of recommendations to the IT manager regarding which controls and/or compliance best practices Botium Toys needs to implement, based on the risk posed if not implemented in a timely manner.

**Recommendations (optional):** 

1. **Implement least privilege policies to ensure employees only access the data they truly need.**  
   1. Enforce separation of duties to avoid conflict of interest and limit the risk of internal fraud or accidental misuse.  
2. **Update the passwords policy to include modern complexity rules(Length, characters, expiration).**  
   1. Deploy a centralized passwords management system to reduce IT workload, prevent weak passwords, and speed up rests.

   

3. **Install an Intrusion Detection System (IDS) to monitor traffic, flag suspicious behavior, and stay ahead of threat actors.**  
   

4. **Inventory and classify all digital assets(PII,SPII,credit card data, etc) to tailor protections and ensure compliance with GDPR and SOC frameworks.**  
   

5. **Establish automated, encrypted backups for all critical systems.**  
   1. Design and test a Disaster Recovery Plan(DRP) to bounce back fast from any breach or outage.

   

6. **Enable encryption for stored and transmitted credit card information and consumer data.**  
   1. This protects confidentiality and helps meet PCI DSS and GDPR compliance requirements.

   

7. **Schedule regular monitoring and maintenance for all legacy platforms.**  
   1. Document clear intervention protocols to ensure no surprises during outages or attacks.

By implementing these smart, strategic actions, Botium Toys can transform its current vulnerabilities into a resilient, future-ready security posture while earning the trust of customers, regulators and partners alike.
