# ec2.tf

data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] # Amazon is the owner of Amazon Linux 2 AMI
}
resource "aws_instance" "jenkins" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.default.id
  vpc_security_group_ids = [aws_security_group.allow_ssh_https.id]
  associate_public_ip_address = true
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "jenkins-instance"
  }
}
resource "aws_key_pair" "deployer" {
  key_name   = var.key_pair_name
  public_key = var.public_key
}