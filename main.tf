provider "aws" {
  region = "ap-northeast-2"  # region
}

data "aws_security_group" "existing" {
  id = "sg-0479a603149b40638"  # existing security group
}

resource "aws_instance" "example" {
  ami           = "ami-04341a215040f91bb"  # AMI ID = ubuntu 20.04
  instance_type = "t3.small"  # instance_type

  vpc_security_group_ids = [data.aws_security_group.existing.id]

  key_name = "Groom"  # pem key name

  user_data = <<-EOF
                #!/bin/bash
                sudo apt-get update
                curl -ssL https://get.docker.com/ | bash
                apt install -y docker-compose
                git clone https://github.com/seungsura/SourceGroomDEV
                cd SourceGroomDEV
                chmod +x INSTALLATION.sh
                sh INSTALLATION.sh
                EOF

  tags = {
    Name = "example-instance"
  }
}

resource "aws_route53_record" "example" {
  zone_id = "Z0206306WOU9W0IBFJ1V"  # Route53 Zone ID
  name    = "gosu.digital"  # domain name
  type    = "A"

  ttl = "300"
  records = [aws_instance.example.public_ip]
}