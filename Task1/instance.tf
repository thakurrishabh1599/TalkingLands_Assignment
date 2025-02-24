resource "aws_instance" "nginx" {
  ami                    = var.amiID[var.region]
  instance_type          = "t3.micro"
  key_name               = "nginx-key"
  vpc_security_group_ids = [aws_security_group.nginx_sg.id]
  availability_zone      = var.zone

  tags = {
    "Name"  = "Nginx-server"
    Project = "Nginx-server"
  }
  provisioner "file" {
    source      = "nginx_setup.sh"
    destination = "/tmp/nginx_setup.sh"
  }
  connection {
    type        = "ssh"
    user        = var.ubuntu_user
    private_key = file("nginx-key")
    host        = self.public_ip
  }
  provisioner "remote-exec" {

    inline = [
      "chmod +x /tmp/nginx_setup.sh",
      "sudo /tmp/nginx_setup.sh"
    ]

  }
}
resource "aws_ec2_instance_state" "nginx_state" {
  instance_id = aws_instance.nginx.id
  state       = "running"

}