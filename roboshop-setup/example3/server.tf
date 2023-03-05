data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}


resource "aws_instance" "instances" {
    for_each = var.instances
    ami = data.aws_ami.example.image_id
    instance_type = each.value["type"]
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = each.value["name"]
    }
   
}

variable "instances" {
    
    default = {
        catalogue = {
            name = "catalogue"
            type = "t3.micro"
        }
         cart = {
            name = "cart"
            type = "t3.small"
        } 
    }
}