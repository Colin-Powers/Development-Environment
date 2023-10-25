resource "aws_subnet" "Public" {
  vpc_id                  = aws_vpc.Dev.id
  cidr_block              = "${var.subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone       = "${var.subnet_avail}"

  tags = {
    name = "${var.project_tag}"
  }
}