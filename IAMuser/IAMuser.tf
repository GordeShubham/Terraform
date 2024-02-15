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
 
resource "aws_s3_bucket_ownership_controls" "demo_bucket" {
  bucket = aws_s3_bucket.demo_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
