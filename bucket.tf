resource "aws_s3_bucket" "s3-bucket" {
  bucket = "${var.bucket_name}" 
  acl = "${var.acl_value}"
  force_destroy = true
  lifecycle {
  prevent_destroy = false
    }
  lifecycle_rule {
    enabled = true
     
    transition {
      days = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days = 60
      storage_class = "GLACIER"
    }
  }
}
