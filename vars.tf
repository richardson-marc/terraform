#################################################
# Variables for general properties
#################################################
variable "candidate_name" {
    description = "Hey! Thanks for working on this sample project. Let's start with your name."
    default = "Marc Richardson"
}

variable "environment" {
    description = "The environment to use for this infrastructure deployment. In this case, we'll juset use 'Test'"
    default = "Test"
}

variable "provisioning_key" {
    description = "A key that can be used to connect and provision instances in AWS."
    default = ""
}

#################################################
# Variables for building out a VPC
#################################################
variable "vpc_name" {
    description = "Name of the VPC. Examples include 'prod', 'dev', 'mgmt', etc."
    default = "terraform-aws-vpc-hiring"
}

#variable "vpc_id" {
#	 description = "id of the vpc"
#	 default = ""
#	 }
	 
variable "vpc_cidr" {
    description = "The IP address range of the VPC in CIDR notation."
    default = "10.9.0.0/16"
}

variable "vpc_enable_dns_hostnames" {
    description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
    default = true
}

variable "vpc_enable_dns_support" {
    description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
    default = true
}

variable "vpc_create_internet_gateway" {
    description = "A boolean flag to enable/disable the creation of an Internet Gateway"
    default = true
}

#variable "vpc_tags" {
#	 description = "tags for the vpc"
#	  Owner       = "${var.candidate_name}"
#	  Environment = "${var.environment}"
#	 }

#################################################
# Variables for setting up subnets and routing
#################################################
variable "subnets_az_state_filter" {
    description = "This value can be used to filter Availability Zones to use when setting up network resources. Let's only use available AZs as *data* sources"
    default = "available"
}

variable "subnets_private_count" {
    description = "How many private subnets to make."
    default = 2
}

variable "subnets_public_count" {
    description = "How many public subnets to make. Just 1 is required for a NAT Gateway."
    default = 1
}

variable "subnets_enable_nat_gateway" {
    description = "A boolean flag to enable/disable the creation of a NAT Gateway."
    default = true
}

variable "private_primary_subnet_id" {
        description = "private primary subnet id"
	default = ""
        }

variable "public_subnet_id" {
        description = "public subnet id"
	default = ""
        }


#################################################
# Variables for setting up a MongoDB instance
#################################################
variable "mongo_count" {
    description = "How many mongodb instances to create."
    default = 1
}

variable "mongo_ami" {
    description = "The ami to use for the mongodb instance. Changed this to Ubuntu 16.04, the other AMI was not available in this region"
    default = "ami-66506c1c"
}

variable "mongo_instance_type" {
    description = "The instance type to use for the mongodb instance.  Changed this to t2 micro so that it is free"
    default = "t2.micro"
}

variable "mongo_volume_type" {
    description = "The volume type to use for data storage on the mongodb instance."
    default = "gp2"
}

variable "mongo_volume_size" {
    description = "The volume size to use for the mongodb instance."
    default = 10
}

#################################################
# Variables for setting up an App instance
#################################################
variable "app_ami" {
    description = "The ami to use for the application instance. Changed it to Ubuntu 16.04, the original AMI was not available in this region"
    default = "ami-66506c1c"
}

variable "app_instance_type" {
    description = "The instance type to use for the application instance.  Changed this to t2 micro so that it is free"
    default = "t2.micro"
}

variable "app_associate_public_ip_address" {
    description = "Associate a public ip address with an instance in a VPC. Boolean value."
    default = true
}
