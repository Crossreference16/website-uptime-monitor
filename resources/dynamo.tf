resource "aws_dynamodb_table" "uptime_checks" {
    name = "uptime_checks"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "url"
    range_key = "timestamp"

    attribute {
        name = "url"
        type = "S"
    }

    attribute {
        name = "timestamp"
        type = "S"
    }

}