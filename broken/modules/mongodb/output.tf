#output "vpc_id"     { value = "${aws_vpc.main.id}" }
output "mongo_private_ip" { value = "${mongo_stuff.main.mongo_private_ip}" }

output "public_subnet_id" { value = "${mongo_stuff.main.public_subnet_id}" }
output "private_primary_subnet_id" { value = "${mongo_stuff.main.private_primary_subnet_id}" }
