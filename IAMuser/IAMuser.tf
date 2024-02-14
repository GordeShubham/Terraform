provider "aws" {
    region = "eu-west-3"
}
resource "aws_iam_user" "my_user"{
    name = "demo"
    path = "/"

    tags = {
    tag-key = "env-dev"
  }
} 