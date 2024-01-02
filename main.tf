# main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample_instance" {
  ami           = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  key_name      = "aws"
  vpc_security_group_ids = ["sg-079126707a2ba91bd"]
  tags = {
    Name = "sample-3"
  }
}

