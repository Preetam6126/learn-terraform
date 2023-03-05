resource "aws_instance" "instance" {
    
    ami = "ami-0a017d8ceb274537d"
    instance_type = var.instance_type == ? "t3.micro" : var.instance_type
}

variable "instance_type" {}

variable "create_instances" {}

resource "aws_instance" "instances"{
    
    count = var.create_instances == "true" ? 1 : 0 # or you can use----> count = tobool(var.create_instances) ? 1 : 0
    
    ami = "ami-0a017d8ceb274537d"
    instance_type = var.instance_type == ? "t3.micro" : var.instance_type
}