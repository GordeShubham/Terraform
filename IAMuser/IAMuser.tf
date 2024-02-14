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

resource "aws_iam_policy" "policy" {
  name        = "${random_pet.pet_name.id}-policy"
  description = "My test policy"

  policy = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["AdministratorAccess-Amplify"],
      "Effect": "Allow",
      "Resource": "*"
}
]
}
}

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.my_user.name
  policy_arn = aws_iam_policy.policy.arn
}