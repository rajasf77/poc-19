terraform {
  backend "s3" {
    bucket = "terraform-rajjaaa77"
    key    = "state/terraform.tfstate"
    region = "eu-north-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "poc_server" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t3.micro"

  tags = {
    Name = "POC-19"
  }
}

resource "aws_instance" "poc_se1rver" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t3.micro"

  tags = {
    Name = "POC-live"
  }
}
