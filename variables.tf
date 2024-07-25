variable "region" {
  description = "ex. us-east-1"
  default = "us-east-1"
}

variable "s3_bucket_name" {
  description = "ex. aws-tf-statefiles-01"
  default = "aws-tf-statefiles-01"
}

variable "dynamodb_table_name" {
  description = "ex. aws-tf-statefiles-lock-01"
  default = "aws-tf-statefiles-lock-01"
}