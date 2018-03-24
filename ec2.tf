resource "aws_instance" "app" {
#    ami                         = "ami-66506c1c"
     ami			 = "${var.app_ami}"
     key_name = "ubuntu-ec2"
#    app_associate_public_ip_address = "${var.app_associate_public_ip_address}"
    availability_zone           = "us-east-1c"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
#    key_name                    = "ubuntu-ec2"
#    subnet_id                   = "subnet-d1f35da6"
#    vpc_security_group_ids      = ["sg-2086b957"]
    associate_public_ip_address = true
#    private_ip                  = "172.31.32.211"
    source_dest_check           = true

#    ebs_block_device {
#        volume_type           = "gp2"
#        volume_size           = 8
#        delete_on_termination = true
#    }

    tags {
    Name        = "App01"
    Owner       = "${var.candidate_name}"
    Environment = "${var.environment}"
    Type        = "App"
    }

 provisioner "file" {
     source      = "files/install_ruby.sh"
         destination = "/home/ubuntu/install_ruby.sh"
	   }
	    provisioner "local-exec" {
	        command = "/home/ubuntu/install_ruby.sh"
		  }
	   }

resource "aws_instance" "mongodb" {
#    ami                         = "ami-66506c1c"
     ami 			 =  "${var.mongo_ami}"
     key_name = "ubuntu-ec2"
         availability_zone           = "us-east-1c"
	     # What are we making
#	         mongo_count                    = "${var.mongo_count}"
#		     mongo_ami                      = "${var.mongo_ami}"
#		         mongo_instance_type            = "${var.mongo_instance_type}"
# How to build the disks and VM resources
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
#    key_name                    = "ubuntu-ec2"
#    subnet_id                   = "subnet-d1f35da6"
#    vpc_security_group_ids      = ["sg-2086b957"]
    associate_public_ip_address = true
#    private_ip                  = "172.31.32.211"
    source_dest_check           = true

#    root_block_device {
#        volume_type           = "gp2"
#        volume_size           = 8
#        delete_on_termination = true
#    }

    tags {
    Name        = "Mongo01"
    Owner       = "${var.candidate_name}"
    Environment = "${var.environment}"
    Type        = "Database"
    }
     provisioner "file" {
         source      = "files/install_mongo.sh"
	     destination = "/home/ubuntu/install_mongo.sh"
	       }
	        provisioner "local-exec" {
		    command = "/home/ubuntu/install_mongo.sh"
		      }
}

