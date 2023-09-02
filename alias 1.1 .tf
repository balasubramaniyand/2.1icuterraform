terraform {
required_providers {
  aws ={
    source = "hashicorp/aws"
    version = "~>5.0"
  }
}
}
provider "aws" {
    region = "ap-southeast-1"
}

provider "aws" {
    region = "ap-south-1"
    alias = "love"  
}
resource "aws_vpc" "vpc-my" {
    cidr_block ="10.0.0.0/16"
    tags={
        Name ="balavpc"
    }
}

resource "aws_vpc" "wel-vpcsouth" {
    cidr_block ="20.0.0.0/16"
    provider = aws.love
    tags={
        name ="vpc123"
    }
  
}
