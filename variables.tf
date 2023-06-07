variable "aws_region" {
  description = "AWS region"
  default     = "us-east-2"
}
variable "instance_type" {
  description = "Instance type for EC2 instance"
  default     = "t2.micro" # This is free tier eligible
}
variable "ami_id" {
  description = "Amazon Machine Image (AMI) ID"
  default     = "ami-0dcbd2aa4a07a555b" # This is a default Amazon Linux 2 AMI ID. Make sure it exists in your region or replace it with your AMI ID.
}

variable "public_key" {
  description = "public key for SSH"
}

variable "key_pair_name" {
  description = "Desired name of the AWS key pair"
}
