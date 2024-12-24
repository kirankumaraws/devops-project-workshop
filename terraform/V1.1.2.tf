provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {

    ami = "ami-01816d07b1128cd2d"
    instance_type = "t2.micro"
    key_name = "dpp"
    security_groups = [aws_security_group.demo-sg.name]
    tags = {
      Name = "Web_server"
    }
  
}

resource "aws_security_group" "demo-sg" {

    name = "demo-sg"
    description = "SSH_Access"

    tags = {
      Name = "SSH_access"
    }

    ingress {

        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress{
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]

    }
  
}