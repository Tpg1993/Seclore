variable vpc_cidr_block {}
variable vpc_tag{}
variable "igw_tag" {
	default = "my_ig"
}
variable "route_table_tag" {
	default = ""
}
variable "subnets_cidr_block" {
        type = "list"
#        default = ["10.20.1.0/24" , "10.20.2.0/24"]
}
variable "azs" {
#        type = "list"
#        default = ["us-west-1b", "us-west-1c"]
}
variable "subnet_tag" {}
