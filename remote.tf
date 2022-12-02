terraform {
  backend "s3" {
    bucket = ""
    key    = "Terraform/eks.tfstate"
    region = "us-east-1"
  }
}

