# VPC Module Input Varialbles

variable "subnets_az_state_filter" {
    description = "state filter of AZ subnet"
}

variable "subnets_private_count" {
    description = "The count of private subnets.  This should be two"
}

variable "subnets_public_count" {
    description = "The count of public subnets.  This should be one"
}

variable "subnets_enable_nat_gateway" {
    description = "Should the nat gateway be enabled on subnets?"
}

variable "subnets_tags" {
	 description = "subnet tags"
	 }

variable "subnets_target_vpc_id" {
	 description = "target vpc id"
	 }

variable "subnets_target_vpc_igw_id" {
	 description = "vpc igw id of the target"
	 }

variable "private_primary_subnet_id" {
	 description = "private primary subnet id"
	 }

variable "public_subnet_id" {
	 description = "public subnet id"
	 }

