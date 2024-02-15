provider "aws" {
 region = "eu-west-3"
}

resource "aws_iam_user" "demo_user" {
 name = "demo"
}

resource "aws_iam_user_login_profile" "demo_user_login_profile" {
 user    = aws_iam_user.demo_user.name
} 

output "password" {
 value = aws_iam_user_login_profile.demo_user_login_profile.password
} 
 
 resource "aws_s3_bucket" "demo_bucket" {
  bucket = "demo-terraform-bucket-123"
  
}
 
resource "aws_s3_bucket_ownership_controls" "demo-terraform-bucket-123" {
  bucket = aws_s3_bucket.demo-terraform-bucket-123.id
  rule {
    object_ownership = "BucketOwnerPreferred"

resource "aws_iam_user_policy" "s3_bucket_policy" {
  name = "s3-bucket-policy"
  user = aws_iam_user.s3_bucket_policy.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
           "s3:GetObject",
           "s3:PutObject"

        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user" "s3_bucket_policy" {
  name = "bucket-policy"
  path = "/"
}

resource "aws_iam_access_key" "s3_bucket_policy" {
  user = aws_iam_user.s3_bucket_policy.name
}