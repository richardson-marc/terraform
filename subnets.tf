resource "aws_subnet" "main" {
# tags = "${merge(var.vpc_tags, map("Name", format("%s", var.vpc_name)))}"
 cidr_block = "${var.vpc_cidr}"
#         public_subnet_id = "${var.public_subnet_id}"
#         private_primary_subnet_id = "${var.private_primary_subnet_id}"
vpc_id     = "${aws_vpc.main.id}"
# vpc_id = "${var.vpc_id}"
 }

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
  }

#resource "aws_nat_gateway" "main" {
#  allocation_id = "${aws_eip.nat.id}"
#    subnet_id     = "${aws_subnet.main.public.subnet.id}"
#    }