provider "aws" {
  region = "eu-west-1"
}
resource "aws_s3_bucket" "tf_state" {
  bucket = "mybucket-terraform-state-file-new"
  tags = {
    Name = "mybucket-terraform-state-file-new"
  }
}
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tf_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "tf_lock_new" {
  name         = "terraform-lock-new"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}