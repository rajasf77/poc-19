terraform {
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
  instance_type = "t3.micro" # Changed to t3 for Free Tier compatibility

  tags = {
    Name = "POC-19-Production-Server"
  }
}

resource "aws_instance" "poc_server" {
  ami           = "ami-0440d3b780d96b29d" 
  instance_type = "t3.micro" # Changed to t3 for Free Tier compatibility

  tags = {
    Name = "POC-test-live"
  }
}
