resource "aws_spot_instance_request" "node1" {
  ami           = "ami-0bd9a7e76c2ce901a"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
  wait_for_fulfillment = true
  
  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "prom-test-server"
}

resource "aws_spot_instance_request" "node2" {
  ami           = "ami-0bd9a7e76c2ce901a"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0dfcc82daa20fc54d"]
  wait_for_fulfillment = true

  tags = {
    Name = "prom-test-node"
  }
}

resource "aws_ec2_tag" "node2" {
  resource_id = aws_spot_instance_request.node2.spot_instance_id
  key         = "Name"
  value       = "prom-test-node"
}