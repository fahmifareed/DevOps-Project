output "instance_id" {
  description = "The ID of the AWS EC2 instance"
  value       = aws_instance.app.id
}
