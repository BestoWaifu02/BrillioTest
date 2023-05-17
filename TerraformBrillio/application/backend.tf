terraform {
  backend "s3" {
    bucket         = "remote-state-brillio"
    key            = "application/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
   
  }
}