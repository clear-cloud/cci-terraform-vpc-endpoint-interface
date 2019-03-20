variable "environment" {}
variable "orchestration" {}
variable "vpc_cidr" {}
variable "subnet_id" {}
variable "service_name" {}
variable "vpc_id" {}

variable "vpc_endpoint_type" {
  default = "Interface"
}
