resource "aws_security_group" "security" {
  name        = "${var.security_name}"
  description = "${var.security_descr}"
  vpc_id      = aws_vpc.Dev.id

  ingress {
    from_port   = "${var.ingress_from}"
    to_port     = "${var.ingress_to}"
    protocol    = "${var.ingress_protocol}"
    cidr_blocks = ["${var.ingress_cidr}"]
  }

  egress {
    from_port   = "${var.egress_from}"
    to_port     = "${var.egress_to}"
    protocol    = "${var.egress_protocol}"
    cidr_blocks = ["${var.egress_cidr}"]
  }

}