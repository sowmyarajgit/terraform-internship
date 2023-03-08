# resource "aws_eip" "lb" {
#   depends_on = [aws_internet_gateway.igw]
#   vpc        = true
# }

# resource "aws_nat_gateway" "ngw" {
#   allocation_id = aws_eip.lb.id
#   subnet_id     = aws_subnet.public_subnet.id
#   depends_on    = [aws_internet_gateway.igw]

#   tags = {
#     Name = var.nat_name
#   }
# }