-- ============================================================
--  SQL FILTERS FOR SECURITY INVESTIGATIONS
--  Author  : Alejandro Carlo
--  Project : Cybersecurity Portfolio – SQL Query Filters
--  Context : Security analysis on employee login activity and
--            machine update targeting at a large organization.
-- ============================================================
--  TABLES USED
--    • log_in_attempts  – Records every login event (user, date,
--                         time, country, success flag)
--    • employees        – Employee directory (name, department,
--                         office location)
-- ============================================================


-- ------------------------------------------------------------
-- 1. RETRIEVE AFTER-HOURS FAILED LOGIN ATTEMPTS
-- ------------------------------------------------------------
-- Scenario:
--   A potential security incident was flagged outside business
--   hours. All failed login attempts after 18:00 must be
--   identified to investigate unauthorized access.
--
-- Logic:
--   • login_time > '18:00:00' → off-hours window
--   • success = FALSE         → only failed attempts
-- ------------------------------------------------------------

SELECT
    event_id,
    username,
    login_date,
    login_time,
    country,
    ip_address,
    success
FROM log_in_attempts
WHERE login_time > '18:00:00'
  AND success = FALSE
ORDER BY login_date DESC, login_time DESC;


-- ------------------------------------------------------------
-- 2. RETRIEVE LOGIN ATTEMPTS ON SPECIFIC DATES
-- ------------------------------------------------------------
-- Scenario:
--   A suspicious event was reported on 2022-05-09. The day
--   prior (2022-05-08) is also reviewed to detect related or
--   preparatory activity.
--
-- Logic:
--   • OR operator captures both dates in a single query
--   • ORDER BY login_date, login_time reconstructs a
--     chronological incident timeline
-- ------------------------------------------------------------

SELECT
    event_id,
    username,
    login_date,
    login_time,
    country,
    ip_address,
    success
FROM log_in_attempts
WHERE login_date = '2022-05-08'
   OR login_date = '2022-05-09'
ORDER BY login_date ASC, login_time ASC;


-- ------------------------------------------------------------
-- 3. RETRIEVE LOGIN ATTEMPTS OUTSIDE OF MEXICO
-- ------------------------------------------------------------
-- Scenario:
--   The investigation focuses on logins originating from
--   outside Mexico. Both abbreviated ('MEX') and full-name
--   ('MEXICO') country codes appear in the dataset.
--
-- Logic:
--   • NOT LIKE 'MEX%' excludes any value starting with 'MEX',
--     covering both formats with a single pattern
-- ------------------------------------------------------------

SELECT
    event_id,
    username,
    login_date,
    login_time,
    country,
    ip_address,
    success
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%'
ORDER BY country ASC, login_date DESC;


-- ------------------------------------------------------------
-- 4. RETRIEVE EMPLOYEES IN MARKETING – EAST BUILDING
-- ------------------------------------------------------------
-- Scenario:
--   A targeted software update must be rolled out exclusively
--   to Marketing employees located in the East building
--   (offices East-170, East-267, etc.).
--
-- Logic:
--   • AND ensures BOTH conditions must be true simultaneously
--   • LIKE 'East%' matches any East office code generically
-- ------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    office
FROM employees
WHERE department = 'Marketing'
  AND office LIKE 'East%'
ORDER BY last_name ASC;


-- ------------------------------------------------------------
-- 5. RETRIEVE EMPLOYEES IN FINANCE OR SALES
-- ------------------------------------------------------------
-- Scenario:
--   A separate update applies to both Finance and Sales
--   departments. A single query retrieves all affected staff.
--
-- Logic:
--   • OR returns rows that satisfy at least one condition,
--     consolidating two department lists into one result set
-- ------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    office
FROM employees
WHERE department = 'Finance'
   OR department = 'Sales'
ORDER BY department ASC, last_name ASC;


-- ------------------------------------------------------------
-- 6. RETRIEVE ALL EMPLOYEES NOT IN IT
-- ------------------------------------------------------------
-- Scenario:
--   Certain system updates are not applicable to the IT
--   department. Excluding IT ensures the patch reaches only
--   the relevant users and avoids redundant or conflicting
--   deployments on already-managed machines.
--
-- Logic:
--   • NOT operator negates the equality condition, returning
--     every employee whose department is not 'Information Technology'
-- ------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    office
FROM employees
WHERE NOT department = 'Information Technology'
ORDER BY department ASC, last_name ASC;


-- ============================================================
-- SUMMARY
-- ============================================================
-- This script demonstrates practical SQL filtering techniques
-- applied in a cybersecurity context:
--
--  Operator / Clause    Used for
--  ─────────────────    ────────────────────────────────────
--  AND                  Multi-condition narrowing (queries 1, 4)
--  OR                   Inclusive multi-value selection (2, 5)
--  NOT                  Exclusion of known-safe groups (3, 6)
--  LIKE / NOT LIKE      Flexible pattern matching (3, 4)
--  ORDER BY             Chronological & alphabetical sorting
--
-- Together these queries support two core security workflows:
--   1. Anomaly detection – identifying suspicious login events
--      by time window, date range, and geographic origin.
--   2. Targeted patching – selecting the right employee groups
--      for system updates while excluding irrelevant teams.
-- ============================================================
