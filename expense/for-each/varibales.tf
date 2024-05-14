variable "instance_names"{

    default = {

        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "domain_names"{
    default = "surisetty.online"
}

variable "zone_id"{

    default = "Z012106839ZHX7ESVKOOI"
}