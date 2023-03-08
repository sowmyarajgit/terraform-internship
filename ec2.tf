# resource "aws_instance" "public_ec2" {
#   ami           = var.public_ec2-ami
#   instance_type = var.public_instancetype
#   key_name      = "linux-ppk"
#   tags = {
#     Name = var.public_name
#   }
#   subnet_id              = aws_subnet.public_subnet.id
#   vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
# }
# resource "aws_instance" "private_ec2" {
#   ami           = var.private_ec2-ami
#   instance_type = var.private_instancetype
#   key_name      = "linux-ppk"
#   tags = {
#     Name : var.private_name
#   }
#   subnet_id              = aws_subnet.private_subnet.id
#   vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
# }