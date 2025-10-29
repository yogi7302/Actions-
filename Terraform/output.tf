# Print the EC2 public IP
output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

# Print the full URL of the running app
output "app_url" {
  description = "URL to access the application"
  value       = "http://${aws_instance.app_server.public_ip}:8080"
}
