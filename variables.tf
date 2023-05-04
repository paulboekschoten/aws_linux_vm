variable "cert_email" {
  description = "email address used to obtain ssl certificate"
  type        = string
}

variable "route53_zone" {
  description = "the domain to use for the url"
  type        = string
}

variable "route53_subdomain" {
  description = "the subdomain of the url"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-3"
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}

variable "http_port" {
  description = "Server port for HTTP requests."
  type        = number
  default     = 80
}

variable "https_port" {
  description = "Server port for HTTPS requests."
  type        = number
  default     = 443
}

variable "ssh_port" {
  description = "Server port for SSH requests."
  type        = number
  default     = 22
}