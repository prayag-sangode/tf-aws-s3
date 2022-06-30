terraform {
  backend "s3" {
    bucket = "tf-s3-tfstate"
    key    = "terraform.tstate"
    region = "us-east-1"
    dynamodb_table = "tf-lock-table"
  }
}
  provider "aws" {
  access_key = "$var.aws_access_key "
  secret_key = "$var.aws_secret_key"
  region = "${var.region}"
}  

