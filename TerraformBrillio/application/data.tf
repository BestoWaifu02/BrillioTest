

data "terraform_remote_state" "networking" {
   backend = "s3"
   config ={
      bucket = "remote-state-brillio"
      key = "networking/terraform.tfstate"
      encrypt = true
      region         = "us-east-1"
   }

}