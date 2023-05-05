# data "aws_ami" "example" {
#   most_recent      = true
#   name_regex       = "Centos-8-DevOps-Practice"
#   owners           = ["973714476881"]
# }

# output "ami-id" {
# value = data.aws_ami.example.image_id
    
# }


data "aws_instance" "jenkins" {
  
  instance_id = "i-0ceae52abd7e93392"
}
