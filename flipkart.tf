provider "aws" {
region = "us-east-1"
access_key = "AKIA3C6ZG7OADDKUYQC6"
secret_key = "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"
}
resource "aws_instance" "dev" {
ami = "ami-051f7e7f6c2f40dc1"
instance_type = "t2.micro"
availability_zone = "us-east-1a"
key_name = "terraformdev"
tags = {
        Name = "data"
}
}
resource  "aws_s3_bucket" "dataamazon987simplesweb" {
bucket = "dataamazon987simplesweb"
acl = "private"
