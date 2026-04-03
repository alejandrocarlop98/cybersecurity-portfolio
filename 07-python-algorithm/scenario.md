# Scenario

## Context

A security professional at a healthcare company is responsible for maintaining a file that controls which employees can access restricted content containing personal patient records. Access is restricted at the network level based on IP addresses — only IPs present in an allow list are permitted to connect to the restricted subnetwork.

Over time, certain employees lose their authorization and their IP addresses must be removed from the allow list. A separate remove list tracks which IPs need to be revoked.

## Task

Design and implement a Python algorithm that:

1. Opens and reads the current allow list file (`allow_list.txt`)
2. Parses the file contents into a structured list of IP addresses
3. Compares each IP in the allow list against the remove list
4. Removes any IP address found in the remove list
5. Rewrites the allow list file with the updated, cleaned set of authorized IPs

## Security Relevance

Manual management of access control lists is error-prone and difficult to scale. A single overlooked entry can leave a revoked employee with access to sensitive patient data — a direct violation of healthcare privacy regulations such as HIPAA.

By automating this process, the algorithm ensures that access policies are enforced consistently, eliminates human error from the revocation workflow, and produces a reusable function that can be integrated into broader security automation pipelines.

This task directly applies the principle of least privilege at the access control layer: only verified, currently authorized IPs remain on the allow list at all times.
