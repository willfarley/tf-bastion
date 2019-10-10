variable "bastion_ami_id" {
  description = "The AMI ID to use for the Bastion instance"
}
variable "bastion_instance_type" {
  description = "The instance type to use for the Bastion instance"
}
variable "bastion_ssh_key_name" {
  description = "The SSH key name to use for the Bastion instance"
}
variable "bastion_subnet_id" {
  description = "The Subnet ID to use for the Bastion instance"
}
variable "bastion_vpc_id" {
  description = "The VPC ID to use for the Bastion instance"
}
variable "bastion_ssh_ingress_cidr" {
  description = "The CIDR block to use for the Bastion instance. Should be in CIDR notation (e.g. 10.20.30.40/32)"
}

# Tag Variables

variable "bastion_tag_environment" {
  description = "The Environment tag to use for the Bastion instance"
  default     = "dev"
}
variable "bastion_tag_orchestration" {
  description = "The Orchestration tag to use for the Bastion instance"
  default     = "terraform"
}
