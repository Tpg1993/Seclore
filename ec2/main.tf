resource "aws_instance" "terra-ec2" {
  ami           	= var.ami_id
  count		 	= var.number_of_instances
  security_groups       = var.security_group
#  security_groups       = ["${var.security_group}"]
  subnet_id            = "${element(var.subnets, count.index )}"
#  subnet_id             = var.subnets
  key_name		= var.key_name
  availability_zone 	= "${element(var.azs,count.index)}"
#  availability_zone 	= var.azs
  instance_type 	= var.instance_type
  tags = {
    Name = var.instance_tag
  }
}
