# The CIDR block for the VPC.
vpc_cidr_block = "192.168.0.0/16"

# Makes your instances shared on the host.
instance_tenancy = "default"

# Required for EKS. Enable/disable DNS support in the VPC.
enable_dns_support = true

# Required for EKS. Enable/disable DNS hostnames in the VPC.
enable_dns_hostnames = true

# Enable/disable ClassicLink for the VPC.
enable_classiclink = false

# Enable/disable ClassicLink DNS Support for the VPC.
enable_classiclink_dns_support = false

# Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC.
assign_generated_ipv6_cidr_block = false

# Setting an output value as sensitive prevents Terraform from showing its value in plan and apply.
sensitive = false

# Indicates whether or not the Amazon EKS private API server endpoint is enabled
endpoint_private_access = false

# Indicates whether or not the Amazon EKS public API server endpoint is enabled
endpoint_public_access = true

# Name of the EKS Node Group.
eks_ng_name = "nodes-general"

# Desired number of worker nodes.
eks_ng_desired_size = 0

# Maximum number of worker nodes.
eks_ng_max_size = 5

# Minimum number of worker nodes.
eks_ng_min_size = 0

# Type of Amazon Machine Image (AMI) associated with the EKS Node Group.
eks_ng_ami_type = "AL2_x86_64"

# Type of capacity associated with the EKS Node Group. 
eks_ng_capacity_type = "ON_DEMAND"

# Disk size in GiB for worker nodes
eks_ng_disk_size = 20

# Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
eks_ng_force_update_version = false

# List of instance types associated with the EKS Node Group
eks_ng_instances_types = ["t3.medium"]

# Kubernetes version
kubernetes_version = "1.20"

subnets_public_cidr_blocks = ["192.168.0.0/18", "192.168.64.0/18"]

subnets_private_cidr_blocks = ["192.168.128.0/18", "192.168.192.0/18"]

subnets_availability_zones = ["us-east-1a", "us-east-1b"]

eks_name = "Azumo"

eks_version = "1.20"