data "aws_ami" "server_ami" {
  most_recent = true
  owners      = ["${var.ami_owners}"]

  filter {
    name   = "name"
    values = ["${var.ami_filter_value}"]
  }

}