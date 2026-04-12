provider "aws" {
    region = "ap-south-2"
}

resource "aws_instance" "server" {
    ami = var.ami_ubuntu
    instance_type = "t3.small"
    key_name = "devopskey"
    vpc_security_group_ids = [var.docker_sg]
    associate_public_ip_address = true

    tags = {
        Name = "VM"
    }
}