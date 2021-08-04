variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "VPC cidr in format x.x.x.x/x"
}
variable "tags" {
  type = map(any)
  description = "some tags"
}