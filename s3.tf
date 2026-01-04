resource "aws_s3_bucket" "public_bucket" {
  bucket = var.bucket_name
}

# Allow public access
resource "aws_s3_bucket_public_access_block" "public" {
  bucket = aws_s3_bucket.public_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Public read + write policy
resource "aws_s3_bucket_policy" "public_policy" {
  bucket = aws_s3_bucket.public_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadWrite"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:*",
        Resource = "${aws_s3_bucket.public_bucket.arn}/*"
      }
    ]
  })
}

# CORS configuration for browser access
resource "aws_s3_bucket_cors_configuration" "cors" {
  bucket = aws_s3_bucket.public_bucket.id

  cors_rule {
    allowed_origins = ["*"]  # can change to https://your-frontend.com
    allowed_methods = ["GET", "PUT", "POST", "DELETE", "HEAD"]
    allowed_headers = ["*"]
    expose_headers  = []
    max_age_seconds = 3000
  }
}
