provider "aws" {
    region = "us-west-2"
}

data "aws_caller_identity" "current" {}

resource "aws_iam_role" "my-role" {
    name = "my-role"
    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Action = "sts:AssumeRole"
                Effect = "Allow"
                Principal = {
                    Service = "ec2.amazonaws.com"
                }
            }
        ]
    })
}

output "user_id" {
    value = data.aws_caller_identity.current.user_id
}