

variable "instance_type" {
    description= "to define the instance_type of ec2 instance"
    type= string 
}


variable "aws_subnet" {
    description= "to define the aws_subnet"
    type= string 
}

variable "key_name" {
  type        = string
  description = "The name of the EC2 key pair used for SSH access."
  default = null 
}

variable "vpc_id" {
    description= "to define the vpc_id"
    type= string 
}

