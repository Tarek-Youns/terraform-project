output "bucket" {
  description = "s3_bucket as backup for dynamodb"
  value       = aws_s3_bucket.s3.id
}
