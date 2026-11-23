resource "test" "demo" {}

resorce "aws_instance" "Web" {
    ami = var.ami
    instance_type = var.Instance_type 
    tags = {
        Name = "Web"
    }
}   
variable "ami" {
    default ="ami-"
}   
variable "Instance_type" {}