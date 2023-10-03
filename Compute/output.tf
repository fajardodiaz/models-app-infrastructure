output "public_ip" {
  value       = aws_instance.webserver.*.public_ip
  description = "public ip"
  depends_on  = [aws_instance.webserver]
}
