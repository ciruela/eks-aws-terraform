variable "assign_generated_ipv6_cidr_block" {
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC."
  default     = false
}

variable "enable_classiclink_dns_support" {
  description = "Enable/disable ClassicLink DNS Support for the VPC."
  default     = false
}

variable "enable_classiclink" {
  description = "Enable/disable ClassicLink for the VPC."
  default     = false
}

variable "enable_dns_hostnames" {
  description = "Required for EKS. Enable/disable DNS hostnames in the VPC."
  default     = true
}

variable "enable_dns_support" {
  description = "Required for EKS. Enable/disable DNS support in the VPC."
  default     = true
}

variable "instance_tenancy" {
  description = "Makes your instances shared on the host."
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
}

variable "sensitive" {
  description = "  Setting an output value as sensitive prevents Terraform from showing its value in plan and apply."
  default     = false
}

variable "subnets_public_cidr_blocks" {
  description = " The CIDR blocks for the public subnets."
  type        = list(string)
}

variable "subnets_private_cidr_blocks" {
  description = " The CIDR blocks for the private subnets."
  type        = list(string)
}

variable "subnets_availability_zones" {
  description = "The AZ for the subnets."
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Required for EKS. Instances launched into the subnet should be assigned a public IP address."
  default     = true
}

variable "eks_name" {
  description = "Name of the cluster."
}

variable "eks_version" {
  description = "The Kubernetes version for EKS to use"
  default     = "1.18"
}

variable "endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled"
  default     = true
}

variable "endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled"
  default     = false
}

variable "eks_ng_name" {
  description = "Name of the EKS Node Group."
}

variable "eks_ng_desired_size" {
  description = "Desired number of worker nodes."
  default     = 1
}

variable "eks_ng_min_size" {
  description = "Minimum number of worker nodes."
  default     = 1
}

variable "eks_ng_max_size" {
  description = "Maximum number of worker nodes."
  default     = 1
}

variable "eks_ng_ami_type" {
  description = "Type of Amazon Machine Image (AMI) associated with the EKS Node Group."
  validation {
    condition     = contains(["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64"], var.eks_ng_ami_type)
    error_message = "Valid values: AL2_x86_64, AL2_x86_64_GPU, AL2_ARM_64."
  }
}

variable "eks_ng_capacity_type" {
  description = "Type of capacity associated with the EKS Node Group. "
  validation {
    condition     = contains(["ON_DEMAND", "SPOT"], var.eks_ng_capacity_type)
    error_message = "Valid values: ON_DEMAND, SPOT."
  }
}

variable "eks_ng_disk_size" {
  description = "Disk size in GiB for worker nodes"
  default     = 20

}

variable "eks_ng_force_update_version" {
  description = "Force version update if existing pods are unable to be drained due to a pod disruption budget issue."
  default     = false
}

variable "eks_ng_instances_types" {
  description = "List of instance types associated with the EKS Node Group"
  type        = list(string)
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  default     = 1.18
}