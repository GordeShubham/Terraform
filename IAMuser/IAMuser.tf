provider "aws" {
    region = "eu-west-3"
}
resource "aws_iam_user" "my_user"{
    name = "shubham"
    path = "/"

    tags = {
    tag-key = "env-dev"
  }
} 