data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
    ami = data.aws_ami.example.image_id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "frontend"
    }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "frontend-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "cart"
    }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "cart-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "catalogue"
    }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "catalogue-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "user"
    }
}

resource "aws_route53_record" "user" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "user-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "shipping" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "shipping"
    }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "shipping-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "payment"
    }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "payment-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "mongodb" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "mongodb"
    }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "mongodb-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "mysql" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "mysql"
    }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "mysql-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "redis" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "redis"
    }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "redis-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "rabbitmq" {
    ami ="ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
    tags = {
        Name = "rabbitmq"
    }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z099042325KVJ8P6CC8JI"
  name    = "rabbitmq-dev.devops36.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
