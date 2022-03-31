variable "ami" {}
variable "region" {}
variable "instance_type" {}
variable "access_key" {}
variable "secret_key" {}
variable "subnet_id" {}
variable "vpc_id" {}

resource "aws_instance" "terraform-cloud-demo" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id   = var.subnet_id
  vpc_id = var.vpc_id
  tags = {
   Name = "terraform-cloud-demo-server" 
  }
}
//note
