variable "Instance_type" {}
variable "ami" {
    default ="ami-"
}

resource "aws_instance" "Web" {
    ami = var.ami
    instance_type = var.Instance_type == "" ? "t3.small" : var.Instance_type

tags = {
    Name = "Web"
  }
}

#conditions can be used to set default values for variables or to control the flow of resource creation based on certain conditions. 
#In this example, we are using a condition to check if the variable "Instance_type" is empty. If it is empty, we set the instance type to "t3.small". Otherwise, we use the value provided in the variable.
#