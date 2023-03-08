variable "sg_ingress" {
  type = list(number)
}
variable "public_ec2-ami" {}

variable "private_ec2-ami" {}

variable "private_instancetype" {}

variable "public_instancetype" {}

variable "public_name" {}

variable "private_name" {}

variable "igw_name" {}

variable "nat_name" {}

variable "region" {}

variable "private_rtn" {}

variable "public_rtn" {}

variable "sg_name" {}

variable "public_subnet_cidr_block" {}

variable "private_subnet_cidr_block" {}

variable "public_subnet_name" {}

variable "private_subnet_name" {}

variable "vpc_cidr" {}

variable "vpc_name" {}

variable "azs" {}
