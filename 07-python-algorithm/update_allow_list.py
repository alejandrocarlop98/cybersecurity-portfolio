# update_allow_list.py
#
# Security Automation — IP Allow List Manager
# Author: Alejandro Carlo
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

    # Phase 1: Open the file that contains the allow list
    with open(import_file, "r") as file:

        # Phase 2: Read the file contents into a string variable
        ip_addresses = file.read()

    # Phase 3: Convert the string into a list of individual IP addresses
    ip_addresses = ip_addresses.split()
    print(ip_addresses)  # Debugging: confirm the list was correctly parsed

    # Phase 4: Iterate through the allow list
    for element in ip_addresses:
        print(element)  # Debugging: validate each IP is being traversed

        # Phase 5: Remove IP addresses that are on the remove list
        if element in remove_list:
            ip_addresses.remove(element)

    # Phase 6: Update the file with the revised list of IP addresses
    ip_addresses = "\n".join(ip_addresses)

    with open(import_file, "w") as file:
        file.write(ip_addresses)

    print(f"\n[✓] Allow list updated successfully.")
    print(f"[✓] File '{import_file}' has been rewritten with the revised IP list.")


# --- Entry Point ---

update_allow_list(import_file, remove_list)
