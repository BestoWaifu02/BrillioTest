terraform {
  backend "s3" {
    bucket         = "remote-state-brillio"
    key            = "backend/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
   
  }
}