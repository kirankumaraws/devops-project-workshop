provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {

    ami = ""
    instance_type = "t2.micro"
    tags = {
      Name = "Web_server"
    }
  
}