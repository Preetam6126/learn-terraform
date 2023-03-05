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

output "ec2" {
    
#    value = aws_instance.instances.["catalogue"].public_ip # this code line just give only for one instance i.e. catalogue publc ip

# value = [ for k, v in aws_instance.instances: v.public_ip ] # this code gives public ip's of instances but without names
 
 value = [ for k, v in aws_instance.instances: ${k} - ${v.public_ip} ] #this code is for all instances name and public ip's also
}

##Immature code
# variable "names" {
    
#     defualt = [ "cart", "catalogue", "user"]
# }

# variable "types" {
    
#     default = [ "t3micro", "t3small"]
# }

# resource "aws_instance" "instances" {
    
#     count = length(var.names)
    
#     ami = data.aws_ami.example.image_id
#     instance_type = var.types[count.index]
#     vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
#     tags = {
#         Name = var.names[count.index]
#     }
    
# }

#Little Immature code

# variable "demo" {
    
#     default = [
#     {
#     name = " catalogue"
#     type = " t2.micro"
#     },
#     {
#     name = "cart"
#     type = "t3.micro"
#     }
#     ]
# }


# resource "aws_instance" "demo" {
    
#     count = length(var.demo)
#     ami = data.aws_ami.example.image_id
#     instance_type = var.demo[count.index]["type"]
#     vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
#     tags = {
#         Name = var.demo[count.index]["name"]
# }

