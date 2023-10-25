resource "aws_route_table" "route" {
  vpc_id = aws_vpc.Dev.id

  tags = {
    name = "${var.project_tag}"
  }

}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.route.id
  destination_cidr_block = "${var.route_destination_cidr}"
  gateway_id             = aws_internet_gateway.gateway.id
}

resource "aws_route_table_association" "route_assoc" {
  subnet_id      = aws_subnet.Public.id
  route_table_id = aws_route_table.route.id
}