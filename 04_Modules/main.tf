module "sample "{
    source = "./modules/sample_module"
    instance_type = var.Instance_type   
}
variable "Instance_type" {
    default = "t3.small"
}

#source can be a local path, a Git repository, or a Terraform Registry module. 
#In this example, we are using a local path to the module located in the "modules/sample_module" directory.
#https://registry.terraform.io/browse/module