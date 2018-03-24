variable "mongo_subnet" {
	 description = "the mongodb subnet"
	 }

variable "mongo_volume_type" {
	 description = "the mongodb volume type"
	 }

variable "mongo_instance_type" {
	 description = "mongodb instance type"
	 }

variable "mongo_vpc_id" {
	 description = "mongo vpc id"
	 }

variable "mongo_provisioning_key" {
	 description = "mongo provisioning key"
	 }

variable "mongo_volume_size" {
	 description = "mongo volume size"
	 }

variable "mongo_ami" {
	 description = "ami to use for mongo"
	 }

variable "mongo_count" {
	 description = "count of mongo"
	 }

variable "mongo_app_sg" {
	 description = "the app sg for mongo"
	 }

variable "mongo_tags" {
	 description = "the tags for mongo"
	 }

variable "mongo_private_ip" {
	 description = "the private IP for mongo"
	 }

variable "public_subnet_id" {
	 description = "the public subnet id"
	 }

variable "private_primary_subnet_id" {
	 description = "the private primary subnet id"
	 }