resource "aws_instance" "myinstance" {
  tags{
      Name = "myinstance"
  }
  subnet_id = "${aws_subnet.mysubnet.id}"
  ami = "ami-0a313d6098716f372"
  instance_type = "t2.micro"
  key_name = "KeyName"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.mysg.id}"]
  connection{
    type ="ssh"
    user = "ubuntu"
    private_key ="${file("./KeyName.pem")}"
  }
 provisioner "chef" {
    environment     = "_default"
    run_list        = ["tomcat8::default"]
    node_name       = "myinstance"
    server_url      = "https://api.chef.io/organizations/cheric/"
    recreate_client = true
    user_name       = "dharma557"
    user_key        = "${file("./dharma557.pem")}"
    version         = "14.10.9"
    ssl_verify_mode = ":verify_none"
  }
}