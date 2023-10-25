resource "aws_vpc" "Dev" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    name = "${var.project_tag}"
  }

}

