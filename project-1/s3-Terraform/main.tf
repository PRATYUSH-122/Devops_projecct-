provider "aws" {
    region = "us-east-1"
   # shared_credentials_file = "add the path of aws cli in local machine"
    profile = "default"
}

resource "aws_s3_bucket" "mybucket" {
    bucket = "pp-ss-tt-mytest-bucket"
    acl = "private"

    tags = {
        Name = "My bucket"
    }
  
}