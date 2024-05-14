variable "image_id"{

    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL9 AMI ID"

}

variable "instance_type"{
    type = string
    default = "t2.micro"
}

variable "instance_names"{

    type = list
    default = ["db", "backend", "frontend"]
}