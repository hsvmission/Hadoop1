provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
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
