terraform {
  backend "s3" {
    bucket         = "msoft-tf"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "msoft-tf-lock"
  }
}
