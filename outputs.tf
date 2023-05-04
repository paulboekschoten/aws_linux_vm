output "dns" {
  description = "DNS at which the machine is reachable"
  value       = aws_route53_record.www.fqdn
}

output "ssh_login" {
  description = "SSH login command."
  value       = "ssh -i tfesshkey.pem ubuntu@${aws_route53_record.www.fqdn}"
}