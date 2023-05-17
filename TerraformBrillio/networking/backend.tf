terraform {
  backend "s3" {
    bucket         = "remote-state-brillio"
    key            = "networking/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
   
  }
}