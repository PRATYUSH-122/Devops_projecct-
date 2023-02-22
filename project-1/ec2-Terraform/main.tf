# provider block 
provider "aws" {
    region = "us-east-1"
   # access_key =""
   # secret_key =""
}
# resource block
resource "aws_instance" "ubuntu"{
    ami = "AMI-CATALOG"
    instance_type = "t2.micro"

    tags = {
        Name = "hpratyush"
    }
}
