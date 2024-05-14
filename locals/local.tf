locals {

    ami_id = "ami-090252cbe067a9e58"
    instance_type = var.instance_name == "frontend" ? "t3.small" : "t3.micro"
    tags = {
        Name = "locals"
    }
}