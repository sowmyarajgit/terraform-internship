resource "aws_subnet" "public_subnet" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.public_subnet_cidr_block, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "${var.vpc_name}-public_subnet- ${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnet" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.private_subnet_cidr_block, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-private_subnets- ${count.index + 1}"
  }
}