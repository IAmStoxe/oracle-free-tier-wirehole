########################
# Finding Data Points Below
# https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm

# Oracle Cloud Infrastructure Authentication details
# THIS IS NOT THE SAME AS YOUR NORMAL SSH KEY
# Replace with the fingerprint of your oracle key
oracle_api_key_fingerprint = "Xx:xX:Xx:xX:Xx:xX:Xx:xX:Xx:xX:Xx:xX:Xx:xX"

# Replace with the path to your private oracle key
oracle_api_private_key_path = "/home/ubuntu/.oci/oci_api_key.pem"

###################
# User OCID
user_ocid = "ocid1.user.oc1..aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

###################
# Tenancy OCID
tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

###################
# Compartment OCID
compartment_ocid = "ocid1.tenancy.oc1..aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

###################
# Region
# List available: https://docs.cloud.oracle.com/en-us/iaas/Content/General/Concepts/regions.htm
region = "us-ashburn-1"

###################
# Your SSH Details used to access the server
# Fill in with your own public key signature
ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCybAAAAB"

# Fill in the path to the private key of the ssh key
ssh_private_key_path = "/home/ubuntu/.ssh/id_rsa"


## Optional
# The display name of our new machine within Oracle's console
instance_display_name = "pihole-wireguard"
# Oracle Private Key Password (if applicable)
oracle_api_private_key_password = ""
