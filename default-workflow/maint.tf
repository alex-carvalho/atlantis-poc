provider "aws" {
    region = "us-west-2"
}

data "aws_caller_identity" "current" {}

output "user_id" {
    value = data.aws_caller_identity.current.user_id
}