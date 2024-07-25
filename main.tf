resource "aws_s3_bucket" "terraform_statefile_store" {
  bucket = var.s3_bucket_name

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_statefile_store_versioning" {
  bucket = aws_s3_bucket.terraform_statefile_store.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_statefile_store_encryption" {
  bucket = aws_s3_bucket.terraform_statefile_store.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_dynamodb_table" "terraform_statefile_locks" {
  hash_key     = "LockID"
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
}