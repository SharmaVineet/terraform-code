resource "aws_s3_bucket" "bucket-virginia" {
  provider = aws.region-1
  bucket = "vineet-tf-bucket-in-${data.aws_region.region-1.name}"
}

resource "aws_s3_bucket" "bucket-ohio" {
  provider = aws.region-2
  bucket = "vineet-tf-bucket-in-${data.aws_region.region-2.name}"
}
