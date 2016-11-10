provider "aws" {
  region = "${var.region}"
  alias  = "${var.region}"
}

resource "aws_vpc" "vpc" {
  provider             = "aws.${var.region}"
  cidr_block           = "${var.cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    Name = "${var.name}"
  }
}