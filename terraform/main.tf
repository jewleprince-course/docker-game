provider "aws" {
    region = "ap-south-2"
}

resource "aws_instance" "server" {
    ami = var.ami-ubuntu
    instance_type = "t3.small"
    key_name = "devopskey"
    vpc_security_group_ids = [var.docker-sg]
    associate_public_ip_address = true

    tags = {
        Name = "VM"
    }
}