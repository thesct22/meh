# make provider.tf with these
# provider "aws" {
#     access_key = "access key"
#     secret_key = "secret key"
#     region = "us-east-2"
# }


resource "aws_instance" "MyFirstInstance" {
    count = 2
    ami = "ami-0d563aeddd4be7fff"
    instance_type = "t2.micro"

    tags = {
      "Name" = "demo-${count.index}"
    }
}