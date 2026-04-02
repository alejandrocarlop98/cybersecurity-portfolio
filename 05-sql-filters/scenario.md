# Scenario

## Context

A security professional at a large organization is tasked with investigating potential security issues involving two areas of concern: suspicious login activity across the network and the identification of specific employee groups requiring system updates.

The organization maintains two key database tables — `log_in_attempts`, which logs all access attempts to internal systems, and `employees`, which contains personnel records including department and office location.

## Investigation Goals

The investigation is divided into two workstreams:

**1. Login Activity Analysis**
Recent activity has raised concerns about unauthorized access attempts. The analyst must examine the `log_in_attempts` table to surface anomalies such as failed logins outside of business hours, activity on specific dates of interest, and logins originating from unexpected geographic locations.

**2. Targeted System Update Support**
Separate from the security investigation, the IT team needs to deploy updates to specific employee groups. Rather than performing broad rollouts, the analyst must use the `employees` table to identify precise subsets of staff — by department, building, or exclusion criteria — to ensure updates are applied accurately and efficiently.

## Relevance

This scenario reflects a common dual responsibility of a security analyst: reactive investigation of potential threats alongside proactive support of IT operations. The ability to write precise, well-filtered SQL queries directly impacts both the speed of incident response and the safety of system maintenance procedures.
