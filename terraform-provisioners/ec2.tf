resource "aws_instance" "db"{

    ami = "ami-090252cbe067a9e58"
    instance_type = "t2.micro"
    #vpc_security_group_ids = "sg-020100f23c4da13c3"

    provisioner "local-exec"{

        command = "echo ${self.private_ip} > private_ip.txt"

    }

    # provisioner "local-exec"{
    #     command = "ansible-playbook i private_ip.txt web.yaml"
    # }

    connection {
    type        = "ssh"
    user        = "ec2-user"
    password    = "DevOps321"
    host        = self.public_ip
    }

    provisioner "remote-exec" {
    inline = [
        "sudo dnf install ansible -y",
      "echo 'Hello, World!' > /tmp/example.txt"
    ]
  }

  tags = {
    Name = "db"
  }
}