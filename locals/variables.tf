variable "instance_names"{

    type = list
    default = ["db", "backend", "frontend"]

}
variable "image_id" {
  type        = string #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_name"{

    default = "db"
}
