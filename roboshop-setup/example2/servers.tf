data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
    count = length(var.instances)
    ami = data.aws_ami.example.image_id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
   
    }

variable "instances" {
  
  default = ["cart", "catalogue", "user", "payment", "shipping"]
}

# output "public-ip" {
    
#     value = aws_instance.frontend.*.public_ip
# }

# variable "d1" {
    
#     default = [
#     {
#         course_name = "devops"
#         trainer_name = "ravi"
#     },
#     {
#         course_name = "aws"
#         trainer_name = "raju"
#     }        
#     ]
# }

# output "course" {
    
#     value = var.d1.*.course_name
    
# }
