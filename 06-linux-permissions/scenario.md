# Scenario

## Context

A security professional working with a large organization's research team is responsible for ensuring that file system permissions are correctly configured and aligned with internal access control policies. Proper permission management is essential to prevent unauthorized access to sensitive research data and to maintain the confidentiality and integrity of the organization's systems.

## Task

The file system of the `projects/` directory requires a full permissions audit. The security professional must:

1. Inspect the current permissions assigned to all files and directories, including hidden files
2. Identify any permissions that do not match the authorization levels defined by the organization's security policy
3. Apply the necessary `chmod` commands to remediate any unauthorized access

## Security Policy Requirements

The organization enforces the following access control rules:

- **Others** (users outside the research group) must not have write access to any project files
- **Hidden files** that have been archived must be read-only — no write permissions for any party
- **Directories** must restrict access to the owner only; group access should not exceed read permissions

## Relevance

Misconfigured file permissions are one of the most common and exploitable vulnerabilities in Linux environments. A single over-permissive setting — such as allowing `others` to write to a sensitive file — can enable privilege escalation, data tampering, or unauthorized disclosure. This task directly applies the principle of least privilege at the operating system level.
