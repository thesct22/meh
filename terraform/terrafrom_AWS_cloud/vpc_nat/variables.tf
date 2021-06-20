variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "us-east-2"
}

variable "AMIS" {
  type = map
  default = {
    us-east-1 = "ami-0ee02acd56a52998e"
    us-east-2 = "ami-0d563aeddd4be7fff"
    us-west-2 = "ami-0dd273d94ed0540c0"
    us-west-1 = "ami-0ce448b1704085256"
  }
}