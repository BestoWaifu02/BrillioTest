terraform {
    required_version = "~> 1.0"
    
}

terraform {
    required_providers {
        aws = {
    source  = "hashicorp/aws"
    version = ">= 3.0"
}
    }
}

