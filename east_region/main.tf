# Configue the s3 resource
module "s3_bucket_tarek" {
  source = "/home/tarek/Documents/modules/mod_s3"
  bucket = var.bucket
}


# Configue the vpc dynamodb
module "dynamodb" {
  source                = "/home/tarek/Documents/modules/mod_Dynamodb"
  dynamo_table_name     = var.dynamo_table_name
  dynamo_table_key      = var.dynamo_table_key
  dynamo_table_key_type = var.dynamo_table_key_type
}

# Configue the vpc resource
module "network" {
    source = "/home/tarek/Documents/modules/mod_network"
    vpc_cidr = var.aws_vpc
    public_cidr = var.aws_subnet 
}



# Configue the ec2 resource
module "ec2-module"{
    source = "/home/tarek/Documents/modules/mod_ec2"
    instance_type= var.instance_type 
    aws_subnet = module.network.public_subnet_id
    vpc_id = module.network.vpc_id 
    key_name = var.key_name 
    depends_on       = [module.dynamodb] 
}


