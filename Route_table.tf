resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  // route {
  // cidr_block = "10.0.1.0/24"
  //gateway_id = aws_internet_gateway.igw.id
  //}
  tags = {
    Name = var.public_rtn
  }
}
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  //route {
  //cidr_block = "0.0.0.0/0"
  //gateway_id = aws_internet_gateway.igw.id
  //}
  tags = {
    Name = var.private_rtn
  }
}
resource "aws_route" "public_awsroute" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
# resource "aws_route" "private_nat_gateway" {
#   route_table_id         = aws_route_table.private_rt.id
#   destination_cidr_block = "0.0.0.0/0"
#   nat_gateway_id         = aws_nat_gateway.ngw.id
# }
# resource "aws_route_table_association" "public_rta" {
#   subnet_id      = aws_subnet.public_subnet.id
#   route_table_id = aws_route_table.public_rt.id
# }
# resource "aws_route_table_association" "private_rta" {
#   subnet_id      = aws_subnet.private_subnet.id
#   route_table_id = aws_route_table.private_rt.id
# }