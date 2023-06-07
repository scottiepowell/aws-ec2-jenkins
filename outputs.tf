output "ami_id" {
  description = "The ID of the AMI used for the instance"
  value       = aws_instance.jenkins.ami
}

output "public_ip" {
  description = "The public IP address assigned to the instance"
  value       = aws_instance.jenkins.public_ip
}