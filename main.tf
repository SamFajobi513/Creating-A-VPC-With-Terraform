locals {
  cluster-name = var.cluster-name
}


resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc-cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc-name
    env  = var.env
  }
}
