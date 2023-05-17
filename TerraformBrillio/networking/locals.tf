locals {
    azs = [
        for az_suffix in lookup(var.vpc, "azs_suffixes"):
        join("",[var.region,az_suffix])
    ]
    private_subnets = [
        for az_key, az_suffix in lookup(var.vpc, "azs_suffixes"):
        cidrsubnet(lookup(var.vpc, "cidr_block"), lookup(var.vpc,"newbits"), az_key)
    ]
}