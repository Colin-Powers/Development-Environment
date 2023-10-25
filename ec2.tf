resource "aws_instance" "dev_node" {
  instance_type          = "${var.instance_type}"
  ami                    = data.aws_ami.server_ami.id
  key_name               = aws_key_pair.dev_key.key_name
  vpc_security_group_ids = [aws_security_group.security.id]
  subnet_id              = aws_subnet.Public.id
  user_data              = file("userdata.tpl")

  root_block_device {
    volume_size = "${var.root_block_size}"
  }

  tags = {
    name = "${var.project_tag}"
  }

  provisioner "local-exec" {
    command = templatefile("${var.host_os}-ssh-config.tpl", {
      hostname = self.public_ip,
      user = "${var.provisioner_user}",
      identityfile = "${var.provisioner_identity}"
    } )
    interpreter = [ "${var.provisioner_interpreter}", "-Command" ]
  }
}