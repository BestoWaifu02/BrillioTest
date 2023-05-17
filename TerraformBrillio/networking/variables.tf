variable "region" {
    type = string
    description = "region"
}

variable "vpc"{
    type = object({
        azs_suffixes = list(string),
        cidr_block = string,
        newbits    = number

    })
}