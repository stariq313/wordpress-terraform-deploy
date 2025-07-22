#terraform {
#  backend "s3" {
#    bucket         = "your-bucket-name"
#    key            = "terraform/state.tfstate"
#    region         = "eu-west-2"
#    encrypt        = true
#    dynamodb_table = "your-lock-table"
#  }
#}

#For demonstration purposes only and won't do nothing until S3 and Dynamo DB are setup