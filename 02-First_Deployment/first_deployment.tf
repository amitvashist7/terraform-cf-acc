provider "aws" {
  access_key = "Access Key"
  secret_key = "Secrey Key"
  region     = "us-west-2"
}
resource "aws_instance" "example" {
  ami           = "ami-01e24be29428c15b2"
  instance_type = "t2.micro"
}
