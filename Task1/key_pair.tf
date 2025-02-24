resource "aws_key_pair" "nginx-key" {
  key_name   = "nginx-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGu542ghbMJa1JFBgDbrO1m3Pb2ZOWwmv9cWLkNr+4LI dell@DESKTOP-K5A2GMQ"
}