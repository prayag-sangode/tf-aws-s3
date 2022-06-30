terraform {  
  backend "s3" {
    bucket = "tf-s3-tfstate"
    key    = "terraform.tstate"
    region = "us-east-1"
    dynamodb_table = "tf-lock-table"
  }
}

