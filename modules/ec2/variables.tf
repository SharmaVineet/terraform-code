variable "instance_type" {
  default = "t2.micro"
}

variable "security_group_ingress_port" {
  type    = list(number)
  default = [443, 22, 80]
}

variable "name" {
  type    = string
  default = ""
}

variable "description" {
  type    = string
  default = ""
}