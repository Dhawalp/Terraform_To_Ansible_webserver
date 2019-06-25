resource "aws_instance" "web_server" {
 ami = "${lookup(var.webserver_amis, var.aws_region)}"
 instance_type = "t2.micro"
 key_name = "Project2"
 security_groups = ["${aws_security_group.web_server.name}"]
} 

output "instance_ip_addr" {
  value = aws_instance.web_server.public_ip
}
