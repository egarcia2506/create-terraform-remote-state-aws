output "s3_bucket_name" {
    description = "The name of the S3 bucket created to be used as TF backend"
    value = aws_s3_bucket.terraform_statefile_store.id 
}

output "dynamodb_table_name" {
    description = "The name of the DynamoDB table created to be used as TF backend"
    value = aws_dynamodb_table.terraform_statefile_locks.id 
}