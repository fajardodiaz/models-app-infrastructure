resource "aws_instance" "webserver" {
  instance_type = var.instance_type
  ami = var.ami
  associate_public_ip_address = true
  availability_zone = var.availability_zone
  ebs_block_device {
    delete_on_termination = true
    device_name = "/dev/sda1"
    volume_size = "25"
    volume_type = "gp2"
  }
  key_name = var.key_name
  count = var.webserver_count
  tags = {
    Name = "Webserver"
    Environment = var.environment
  }
}