resource "aws_instance" "myinstance" {
  ami                         = "ami-0fcf52bcf5db7b003"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "terrformuser"
  subnet_id                   = data.aws_subnet.first.id
  user_data                   = file("apache.sh")
  vpc_security_group_ids      = ["sg-05f236ca9841f5ad4"]
  tags = {
    Name = "myinstance"

  }
  connection {
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    type        = "ssh"
  }
  provisioner "file" {
    source      = "apache.sh"
    destination = "/tmp/apache.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update", "sudo apt install apache2 -y"
    ]
  }
}