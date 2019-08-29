provider "aws" {
region = "${var.aws_region}"
}

resource "aws_instance" "web_server" {
ami = "ami-034e1d78dd9d4a332"
instance_type = "t2.micro"
subnet_id = "${aws_subnet.Mgmt-Subnet.id}"
security_groups = [aws_security_group.MgmtSecurityGroup.id]
associate_public_ip_address = "true"

tags = {
Name = "Mgmt-Server"
}
}