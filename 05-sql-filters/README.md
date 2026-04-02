# 🗃️ Apply Filters to SQL Queries

## Overview

As part of a security investigation at a large organization, SQL queries were used to filter data from two core tables — `employees` and `log_in_attempts` — in order to identify suspicious login activity and target specific employee groups for system updates.

This project demonstrates practical use of SQL `WHERE` clauses, logical operators (`AND`, `OR`, `NOT`), and pattern matching (`LIKE`) to extract precise, actionable results from large datasets.

---

## Scenario

> See [`scenario.md`](./scenario.md) for full context.

A security professional discovers potential security issues involving login attempts and employee machines. The task is to investigate the organization's data using SQL filters to identify anomalies and support targeted IT operations.

---

## Tables Used

| Table | Description |
|---|---|
| `log_in_attempts` | Records of all login attempts including time, date, country, and success status |
| `employees` | Employee records including department and office location |

---

## Queries & Findings

### 1. After-Hours Failed Login Attempts

**Objective:** Identify all failed login attempts occurring after business hours (18:00).

**Operators used:** `WHERE`, `AND`, comparison operators  
**Logic:** Filter records where `login_time > '18:00'` AND `success = FALSE`

**Why it matters:** After-hours failed logins can indicate brute force attempts or unauthorized access outside monitored windows.

---

### 2. Login Attempts on Specific Dates

**Objective:** Examine login activity on the date of a suspected incident and the day prior to identify related events.

**Operators used:** `WHERE`, `OR`, `ORDER BY`  
**Logic:** Retrieve all records matching either of two target dates, sorted chronologically by date and time

**Why it matters:** Sorting by `login_date, login_time` allows accurate reconstruction of an incident timeline — essential for forensic analysis.

---

### 3. Login Attempts Outside of Mexico

**Objective:** Isolate login attempts originating from countries other than Mexico, where the majority of traffic was known to be legitimate.

**Operators used:** `WHERE`, `NOT LIKE`  
**Logic:** Exclude records where the country field starts with `MEX` — covering both `MEX` and `MEXICO` entries

**Why it matters:** Filtering out known-good traffic reduces noise and focuses the investigation on anomalous geographic activity.

---

### 4. Employees in Marketing (East Building)

**Objective:** Retrieve only Marketing department employees located in the East building for a targeted software update rollout.

**Operators used:** `WHERE`, `AND`, `LIKE`  
**Logic:** Filter where `department = 'Marketing'` AND `office LIKE 'East%'` — capturing offices such as East-170, East-267, etc.

**Why it matters:** Targeted updates reduce risk of unintended changes and ensure only relevant systems are modified.

---

### 5. Employees in Finance or Sales

**Objective:** Retrieve employees from either the Finance or Sales departments for a cross-departmental update.

**Operators used:** `WHERE`, `OR`  
**Logic:** Return records where `department = 'Finance'` OR `department = 'Sales'`

**Why it matters:** The `OR` operator efficiently consolidates two separate queries into one, reducing redundancy.

---

### 6. All Employees Not in IT

**Objective:** Exclude IT department staff from an update that was not applicable to their systems.

**Operators used:** `WHERE`, `NOT`  
**Logic:** Return all employees where `department != 'IT'`

**Why it matters:** Excluding irrelevant groups prevents unnecessary system changes and minimizes operational risk.

---

## Summary

This project demonstrates how SQL filtering can directly support security operations and IT administration. By combining `WHERE` clauses with logical operators and pattern matching, large datasets were narrowed into precise, actionable outputs — enabling efficient incident investigation, accurate employee targeting, and minimal data exposure.

| Skill | Applied |
|---|---|
| Logical operators (`AND`, `OR`, `NOT`) | ✅ |
| Pattern matching (`LIKE`, `NOT LIKE`) | ✅ |
| Chronological sorting (`ORDER BY`) | ✅ |
| Security-driven query design | ✅ |
| Cross-table filtering | ✅ |

---

## Files

| File | Description |
|---|---|
| `scenario.md` | Full scenario context and investigation background |
| `screenshots/` | Query outputs for each of the 6 scenarios |
| `docs/apply-filters-to-sql-queries.docx` | Original project document |
