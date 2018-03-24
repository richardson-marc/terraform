# Create helpful outputs here..

output "VPC ID:"   { value = "${module.vpc.vpc_id}" }
output "VPC CIDR:" { value = "${module.vpc.vpc_cidr}" }

# output for app public ip address..?
#output "app IP ADDRESS" { value = "${module.app.app_associate_public_ip_address}" }

