provider "aws" {
    access_key = "AKIAJROVFNRGMW5ML2EQ"
    secret_key = "//7BFjaUEshDfSUadSfEd1+JvGmUWj6SdcY1e9Jl"
    region = "us-west-2"
}

resource "aws_instance" "example" {
    ami = "ami-775e4f16"
    instance_type = "t2.micro"
    key_name = "hari"
    subnet_id = "subnet-5018af34"
    tags {
           Name = "haripc"
       }
  }
