resource "aws_s3_bucket" "uploads" {
  bucket = "goof-user-uploads"
}
resource "aws_s3_bucket_acl" "uploads_acl" {
  bucket = aws_s3_bucket.uploads.id
  acl    = "public-read"   # <- Snyk IaC should flag this
}
