
data "aws_caller_identity" "current" {}

variable "company_name" {
  default = "acme"
}

variable "environment" {
  default = "dev"
}

locals {
  resource_prefix = {
    value = "${data.aws_caller_identity.current.account_id}-${var.company_name}-${var.environment}"
  }
}



variable "profile" {
  default = "default"
}

variable "region" {
  default = "us-east-1"
}

variable availability_zone {
  type    = "string"
  default = "us-east-1a"
}

variable ami {
  type    = "string"
  default = "ami-09a5b0b7edf08843d"
}