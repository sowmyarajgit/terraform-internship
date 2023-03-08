resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    for_each = var.sg_ingress
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      //ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }

  }
  // ingress {
  //description      = "TLS from VPC"
  // from_port        = 80
  //to_port          = 80
  //protocol         = "tcp"
  //cidr_blocks      = ["0.0.0.0/0"]
  //ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  //}

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    //ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.sg_name
  }

}