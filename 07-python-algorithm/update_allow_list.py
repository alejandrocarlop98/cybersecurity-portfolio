# update_allow_list.py
#
# Security Automation — IP Allow List Manager
# Author: Alejandrocarlop98
#
# Description:
#   This algorithm automates the maintenance of an IP allow list for a
#   healthcare company's restricted subnetwork. It reads the current allow
#   list from a file, removes any IP addresses found in the remove list,
#   and rewrites the file with the updated set of authorized IPs.
#
# Context:
#   Employees are granted access to restricted content (personal patient
#   records) based on their IP address. When an employee's authorization
#   is revoked, their IP must be removed from the allow list promptly and
#   accurately to enforce the principle of least privilege.


# --- Configuration ---

import_file = "allow_list.txt"   # File containing authorized IP addresses

remove_list = [                  # IPs to be revoked from the allow list
    "192.168.97.105",
    "192.168.158.170",
    "192.168.201.40",
    "192.168.58.57"
]


# --- Algorithm ---

def update_allow_list(import_file, remove_list):
    """
    Reads an IP allow list from a file, removes unauthorized IPs,
    and rewrites the file with the updated list.

    Args:
        import_file (str): Path to the allow list file.
        remove_list (list): List of IP addresses to remove.
    """

    # Phase 1: Open and read the allow list file
    with open(import_file, "r") as file:
        ip_addresses = file.read()

    # Phase 2: Convert the string contents into a list of IP addresses
    ip_addresses = ip_addresses.split()

    # Phase 3: Iterate through the allow list and remove unauthorized IPs
    for element in ip_addresses:
        if element in remove_list:
            ip_addresses.remove(element)

    # Phase 4: Convert the updated list back to a string and rewrite the file
    ip_addresses = "\n".join(ip_addresses)

    with open(import_file, "w") as file:
        file.write(ip_addresses)

    print(f"[✓] Allow list updated. Removed {len(remove_list)} IP(s).")
    print(f"[✓] File '{import_file}' has been rewritten successfully.")


# --- Entry Point ---

update_allow_list(import_file, remove_list)
