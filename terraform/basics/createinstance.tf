# make terraform.tfvars with these
# AWS_ACCESS_KEY = "your access key"
# AWS_SECRET_KEY = "your secret key"
# AWS_REGION = "region you want"
# }


resource "aws_instance" "MyFirstInstance" {
    count = 2
    ami = "ami-0d563aeddd4be7fff"
    instance_type = "t2.micro"

    tags = {
      "Name" = "demo-${count.index}"
    }
}