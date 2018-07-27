provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}


resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  availability_zone = "us-east-1d"
  instance_type = "t2.micro"
  key_name = "Testing"
  tags{
	name = "Ghost_Test"
  }
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
#  lifecycle {
#    ignore_changes = ["ebs_block_device"]
#  }
}

#resource "aws_eip" "example" {
#	vpc = "true"
#}

resource "aws_eip_association" "example" {
  	instance_id = "${aws_instance.example.id}"
	allocation_id = "eipalloc-0028117b3fef37962"
}

resource "aws_s3_bucket" "example" {
  	bucket 		= "ghost-terraform-test"
  	acl 		= "private"
}

#resource "aws_ebs_volume" "example" {
#  availability_zone = "${var.region}" # must be same as Instance
#  size = 1
#}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id = "vol-064df96be9e44394f"
  instance_id = "${aws_instance.example.id}"
}
