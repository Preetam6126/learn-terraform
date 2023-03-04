data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
    count = 5
    ami = data.aws_ami.example.image_id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
   
    }
}
