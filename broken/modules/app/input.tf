variable "app_vpc_id" {
	 description = "the app vpc id"
	 }

variable "app_subnet" {
	 description = "the app subnet"
	 }

variable "app_associate_public_ip_address" {
	 description = "app associate public IP address"
	 }

variable "app_mongo_address" {
	 description = "the address app uses to access mongo"
	 }

variable "app_tags" {
	 description = "the tags for the app"
	 }

variable "app_ami" {
	 description = "the ami for the app"
	 }

variable "app_provisioning_key" {
	 description = "provisioning key for the app"
	 }

variable "app_instance_type" {
	 description = "instance type for the app"
	 }

variable "app_sg_id" {
	 description = "the sg_id for the app"
	 }