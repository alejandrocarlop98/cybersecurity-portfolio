# 📖 Scenario – DDoS Attack (ICMP Flood)

## 🧩 Background

You are a cybersecurity analyst working for a multimedia company that offers:
- Web design services  
- Graphic design  
- Social media marketing solutions  

The company primarily serves small businesses.

---

## ⚠️ Incident Description

Your organization recently experienced a **Distributed Denial of Service (DDoS) attack**, which compromised the internal network for approximately **two hours**.

During the attack:
- Network services suddenly stopped responding  
- A large volume of **ICMP packets** flooded the network  
- Internal users were unable to access network resources  

---

## 🚨 Initial Response

The incident management team took immediate action by:

- Blocking incoming ICMP packets  
- Taking non-critical network services offline  
- Restoring critical services as quickly as possible  

---

## 🔍 Investigation Findings

After analyzing the incident, the cybersecurity team discovered:

- A malicious actor launched an **ICMP flood attack**
- The attack entered through an **unconfigured firewall**
- The firewall vulnerability allowed unrestricted ICMP traffic
- This enabled the attacker to overwhelm the network

---

## 🛠️ Security Improvements Implemented

To prevent similar incidents, the organization implemented:

- Firewall rule to **limit ICMP traffic rate**
- **Source IP verification** to detect spoofed IP addresses
- Deployment of **network monitoring tools**
- Implementation of an **IDS/IPS system** to filter suspicious traffic

---

## 🎯 Your Task

As a cybersecurity analyst, you are required to:

Develop a security improvement plan based on the **NIST Cybersecurity Framework (CSF)**, covering the following core functions:

### 1. Identify
- Assess risks in systems, networks, and configurations  
- Detect vulnerabilities and security gaps  

### 2. Protect
- Implement safeguards to prevent future attacks  
- Apply policies, tools, and training  

### 3. Detect
- Improve monitoring and detection capabilities  
- Identify anomalies and potential threats early  

### 4. Respond
- Contain and mitigate active incidents  
- Improve incident response procedures  

### 5. Recover
- Restore systems and services  
- Strengthen recovery strategies and resilience  

---

## 📌 Objective

Use this scenario to:
- Analyze the root cause of the attack  
- Identify security weaknesses  
- Propose improvements aligned with industry standards  
- Strengthen the organization's overall security posture  
