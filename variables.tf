variable "region" {
  default = "us-east-1"
}

variable "s3_bucket_name" {
  description = "ex. tango-tf-statefiles-01"
}

variable "dynamodb_table_name" {
  description = "ex. tango-tf-statefiles-lock-01"
}