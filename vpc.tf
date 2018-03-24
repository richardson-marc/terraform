resource "aws_vpc" "main" {
#	 vpc_id     = "${var.vpc_id}"
# vpc_id = "${aws_vpc.main.id}"
	 cidr_block = "${var.vpc_cidr}"
#	 vpc_name = "${var.vpc_name}"
	 enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
	 enable_dns_support = "${var.vpc_enable_dns_support}"
#	 create_internet_gateway = "${var.vpc_create_internet_gateway}"
 tags = {
 Owner       = "${var.candidate_name}"
 Environment = "${var.environment}"
}		
  }


resource "aws_internet_gateway" "main" {
#    count  = "${var.vpc_create_internet_gateway}"
        vpc_id = "${aws_vpc.main.id}"
    tags = "${merge(var.vpc_tags, map("Name", format("%s", var.vpc_name)))}"
    }
    