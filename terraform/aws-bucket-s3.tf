resource "aws_s3_bucket" "terraform_state" {
  bucket = "oprimogus-terraform-state"
}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}