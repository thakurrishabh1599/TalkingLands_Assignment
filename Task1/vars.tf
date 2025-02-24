variable "region" {
  default = "us-east-1"
}

variable "zone" {
  default = "us-east-1a"

}

variable "amiID" {
  type = map(any)
  default = {
    us-east-1 = "ami-04b4f1a9cf54c11d0"
  }
}
variable "ubuntu_user" {
  default = "ubuntu"

}