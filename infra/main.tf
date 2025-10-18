
resource "aws_dynamodb_table" "mytable" {
  name = var.table_name
  billing_mode   = "PROVISIONED"

  hash_key       = "username"
  range_key      = "last_name"

  attribute {
    name = "username"
    type = "S"
  }

  attribute {
    name = "last_name"
    type = "S"
  }

  ttl {
    attribute_name = "Expires"
    enabled        = true
  }
}

