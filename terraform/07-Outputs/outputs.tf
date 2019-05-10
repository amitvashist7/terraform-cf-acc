provider "aws" {
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
  region     = "us-west-2"
}

resource "aws_instance" "frontend" {
  ami                   = "ami-01e24be29428c15b2"
  instance_type         = "t2.micro"
}

resource "aws_instance" "backend" {
  count                 = 2
  ami                   = "ami-01e24be29428c15b2"
  instance_type         = "t2.micro"
}

output "frontend_ip" {
  value = "${aws_instance.frontend.public_ip}"
}

output "backend_ips" {
  value = "${list ("${aws_instance.backend.*.public_ip}" ,"${aws_instance.backend.*.public_dns}")}"
}
