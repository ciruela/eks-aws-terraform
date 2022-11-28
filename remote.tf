terraform {
  backend "s3" {
    bucket = "azumo-devops"
    key    = "Terraform/eks.tfstate"
    region = "us-east-1"
  }
}

