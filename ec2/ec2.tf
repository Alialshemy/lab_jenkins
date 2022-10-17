resource "aws_instance" "server" {
  count = "${length(var.instances)}"
  ami = var.instances[count.index].ami
  instance_type =var.instances[count.index].instance_type
  subnet_id =var.instances[count.index].subnet
  #associate_public_ip_address 
  key_name = var.instances[count.index].key_name
  vpc_security_group_ids = [
        var.instances[count.index].security_group
  ]
  tags = {
    Name =  var.instances[count.index].tags
  
  }
   provisioner "remote-exec" {
    inline = ["sudo apt update", "sudo apt install python3  -y", "echo Done!"]

    connection {
      host        = "${self.public_ip}"
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file(var.key)}"
    }
    
  }


  
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu -i '${self.public_ip},' --private-key ${var.key}  ansible_config/${var.ansible[count.index]}  --extra-vars dest=${aws_instance.server[0].public_ip}/home/ubuntu/.ssh/id_rsa.pub"

  }
}
