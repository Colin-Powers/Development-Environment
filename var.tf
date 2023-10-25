variable "host_os" {
    type = string
}

variable "vpc_cidr" {
    type = string
}

variable "project_tag" {
    type = string
  
}

variable "subnet_cidr" {
    type = string
  
}

variable "subnet_avail" {
  type = string
}

variable "security_name" {
  type = string
}

variable "security_descr" {
  type = string
}

variable "ingress_from" {
  type = number
}

variable "ingress_to" {
    type = number
  
}

variable "ingress_protocol" {
  type = string
}

variable "ingress_cidr" {
    type = string
  
}

variable "egress_to" {
    type = number
  
}

variable "egress_from" {
  type = number
}

variable "egress_protocol" {
  type = string
}

variable "egress_cidr" {
  type = string
}

variable "route_destination_cidr" {
  type = string
}

variable "terraform_source" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "provider_shared_config" {
  type = string
}

variable "provider_profile_name" {
  type = string
}

variable "key_name" {
  type = string
}

variable "public_key_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "root_block_size" {
  type = number
}

variable "provisioner_user" {
  type = string
}

variable "provisioner_identity" {
  type = string
}

variable "provisioner_interpreter" {
  type = string
}

variable "ami_owners" {
  type = string
}

variable "ami_filter_value" {
  type = string
}