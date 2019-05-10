variable "amis" {
  type = "map"
  default = {
    us-east-1 = "ami-0de53d8956e8dcf80"
    us-west-1 = "ami-0019ef04ac50be30f"
  }
}

variable "region" {
  default="us-east-1"
}

variable "total_instances" {
  default=1
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
