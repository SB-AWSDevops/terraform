
resource "aws_instance" "suri"{

   
    ami = local.ami_id
    instance_type = var.instance_names == "db" ? "t3.small" : "t3.micro"
    
    tags = local.tags

}