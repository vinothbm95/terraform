provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "AWSservice" {
  count                  = var.numberofinstance
  ami                    = var.AMI
  instance_type          = var.instancetype
  vpc_security_group_ids = ["sg-8cd0ddf2"]

  key_name  = "vinoth95"
  user_data = file("user.sh")
  tags = {
    Name  = "Terraform-${count.index + 1}"
  }
}

