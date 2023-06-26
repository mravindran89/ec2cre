variable "instance_name" {
        description = "Name of the instance to be created"
	type    = string
        default = "awsbuilder-demo"
}

variable "instance_type" {
	type    = string
        default = "t2.micro"
}

variable "subnet_id" {
	description = "The VPC subnet the instance(s) will be created in"
	type    = string
        default = "subnet-059e3fae13d8bb802"

}

variable "ami_id" {
        description = "The AMI to use"
	type    = string
        default = "ami-057752b3f1d6c4d6c"
}

variable "number_of_instances" {
        description = "number of instances to be created"
	type    = string
        default = 1
}

variable "ami_key_pair_name" {
	description = "Name of the SSH key"
	type    = string
        default = "NEWSERVERS.pem"
	

  }

