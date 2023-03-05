data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "ec2" {
    ami = data.aws_ami.example.image_id
    instance_type = var.instance_type
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = var.component
    }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "${var.component}-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}
variable "instance_type" {}