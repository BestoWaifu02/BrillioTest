variable "ami-data"{
    type = object({
        image_id  = string,
        instance_type = string

    })
}