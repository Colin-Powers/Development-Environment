resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.Dev.id

  tags = {
    name = "${var.project_tag}"
  }
}