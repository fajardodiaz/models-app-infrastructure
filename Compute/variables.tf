variable "instance_type" {
  default = "t2.micro"
  description = "AWS instance type"
}

variable "ami" {
  default = ""
  description = "OS for the instance"
}

variable "availability_zone" {
  default = "us-east-1"
}

variable "key_name" {
  default = ""
}

variable "webserver_count" {
  default = 1
}

variable "environment" {
  default = "dev"
}