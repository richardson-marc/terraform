
# resource "aws_vpc" "main" {
#     cidr_block = "${var.vpc_cidr}"

#     enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
#         enable_dns_support   = "${var.vpc_enable_dns_support}"

#     tags = "${merge(var.vpc_tags, map("Name", format("%s", var.vpc_name)))}"
#     }

resource "mongo_stuff" "main" {
	 mongo_private_ip = "${var.mongo_private_ip}"
	 public_subnet_id = "${var.public_subnet_id}"
	 private_primary_subnet_id = "${var.private_primary_subnet_id}"
	 }

