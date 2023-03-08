public_ec2-ami = "ami-0dfcb1ef8550277af"

private_ec2-ami = "ami-0dfcb1ef8550277af"

private_instancetype = "t2.micro"

public_instancetype = "t2.micro"

public_name = "terraform_public"

private_name = "terraform_private"

igw_name = "main"

nat_name = "gw_nat"

region = "us-east-1"

private_rtn = "private_routetable"

public_rtn = "public_routetable"

sg_name = "allow_sg"

public_subnet_cidr_block = ["10.95.1.0/24", "10.95.2.0/24", "10.95.3.0/24"] #list

private_subnet_cidr_block = ["10.95.10.0/24", "10.95.20.0/24", "10.95.30.0/24"] #list

public_subnet_name = "public_Main"

private_subnet_name = "private_Main"

vpc_cidr = "10.95.0.0/16"

vpc_name = "main"

sg_ingress = [22, 80, 443]

azs = ["us-east-1a", "us-east-1b", "us-east-1c"]