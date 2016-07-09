provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-2051294a"
    instance_type = "t2.micro"
    key_name = "devkey"
    subnet_id = "subnet-62bf7448"
    user_data = "${file("userdata.sh")}"
    tags {
           Name = "SampleJenkins"
       }
  }
