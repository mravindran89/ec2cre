#resource "aws_instance" "web1" 
#   {
#  ami = var.ami
#  instance_type = var.instancetype
#  tags = {
#    Name = "HelloWorld"
#  }
#}
resource "aws_instance" "ec2_instance"
    {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
} 

