resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           =  var.dynamo_table_name
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       =  var.dynamo_table_key
  

 attribute {
    name = var.dynamo_table_key
    type = var.dynamo_table_key_type
  }
}




