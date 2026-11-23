variable "Instances"{
    default = {
        forntend = {
            instance_type = "t3.small"
        }
        Mongodb = {
            instance_type = "t3.small"
        }
        Catalogue = {
            instance_type = "t3.small"
        }


    }
}
variable "ami" {
    default ="ami-"
}

resource "aws_instance" "Web" {
    for_each = var.Instances
    ami = var.ami
    instance_type = each.value["instance_type"]
    tags = {
        Name = each.key
    }
}