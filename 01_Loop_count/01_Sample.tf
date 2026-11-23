variable "ami" {
    default ="ami-"
}

variable "Instance_type" {
    default ="t3.small"
}

variable "Instance_name" {
    default =["frontend","Mongodb", "Catalogue", "cart", "redis", "Shipping"]
}

resource "aws_instance" "Web" {
    count = length(var.Instance_name)
    ami = var.ami
    instance_type = var.Instance_type
 tags = {
    Name = var.Instance_name[count.index]
  }

}