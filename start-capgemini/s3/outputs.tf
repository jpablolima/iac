output "aws_s3_bucket_id" {
    description = "Bucket Id"
    value = aws_s3_bucket.mybucket.id
}

output "aws_s3_bucket" {
    description = "Nome do Bucket"
    value = aws_s3_bucket.mybucket.bucket
}

output "aws_s3_bucket_region" {
    description = "Região do Bucket"
    value = aws_s3_bucket.mybucket.region
}

output "aws_s3_bucket_arn" {
    description = "Nivel do Access"
    value = aws_s3_bucket.mybucket.arn
}