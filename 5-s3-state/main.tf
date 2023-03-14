terraform {
  backend "s3" {
    bucket = "terraform-71b"
    key    = "5-s3-state/infra.tfstate"
    region = "us-east-1"
  }
}


# resource "aws_instance" "ec2" {
#     ami ="ami-0a017d8ceb274537d"
#     instance_type = "t3.micro"
#     vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
#     tags = {
#         Name = "demo"
#     }
# }


resource "null_resource" "provisioner" {}