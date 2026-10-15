resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "main" {
  bucket = "de-practice-${random_id.suffix.hex}"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}