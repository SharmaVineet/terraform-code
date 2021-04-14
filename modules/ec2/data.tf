data "aws_vpc" "vpc" {
  filter {
    name   = "isDefault"
    values = ["true"]
  }
}

data "aws_ami" "ami_id" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }
}