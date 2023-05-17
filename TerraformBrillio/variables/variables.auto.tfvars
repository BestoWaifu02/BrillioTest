
region = "us-east-1"

vpc ={
    azs_suffixes = [
        "a",
        "b"
    ]
    cidr_block = "10.0.0.0/16"
    newbits = 1
}

ami-data = {
   
    image_id = "ami-0889a44b331db0194"
    instance_type = "c5.large"
}