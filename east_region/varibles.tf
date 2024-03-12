


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


variable "key_name" {
  type = string
}

variable "dynamo_table_name" {
  type = string
}

variable "dynamo_table_key" {
  type = string
}

variable "dynamo_table_key_type" {
  type    = string
  default = "S"
}

variable "bucket" {
  type        = string
  description = "The name of the S3 bucket to be created."
}
