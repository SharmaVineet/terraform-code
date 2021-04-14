resource "aws_instance" "ec2" {
  ami             = data.aws_ami.ami_id.id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.allow_tls.name]

  tags = {
    "Name" = "Vineet"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = var.name
  description = var.description
  vpc_id      = data.aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = var.security_group_ingress_port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [data.aws_vpc.vpc.cidr_block]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}