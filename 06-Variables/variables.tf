provider "aws" {
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
  region     = "us-west-2"
}

variable "zones" {
  default = ["us-west-2a", "us-east-2b"]
}

resource "aws_instance" "example" {
  count                 = 2
  availability_zone     = "${var.zones[count.index]}"
  ami                   = "ami-01e24be29428c15b2"
  instance_type         = "t2.micro"
}
