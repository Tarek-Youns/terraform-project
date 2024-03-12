
variable "ami" {
    description= "to define the ami of ec2 instance"
    type= string 
}

variable "instance_type" {
    description= "to define the instance_type of ec2 instance"
    type= string 
}

variable "aws_vpc" {
    description= "to define the cidr of vpc"
    type= string 
}

variable "aws_subnet" {
    description= "to define the aws_subnet"
    type= string 
}


