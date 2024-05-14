resource "aws_instance" "db"{
    count = 3
    ami = var.image_id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_names[count.index]
    }
    }