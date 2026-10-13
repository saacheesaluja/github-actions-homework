
resource "aws_s3_bucket" "homework" {
  bucket = "saachee-terraform-homework-pr"
}

resource "aws_s3_bucket_lifecycle_configuration" "homework" {
  bucket = aws_s3_bucket.homework.id

  rule {
    id     = "expire-old-objects"
    status = "Enabled"

    filter {}

    expiration {
      days = 365
    }
  }
}
