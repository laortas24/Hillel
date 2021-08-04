//INSTANCE
variable "ami_id" {
  type        = string
  default     = "ami-0cf6f5c8a62fa5da6"
  description = "ID of the AMI in a format 'ami-1z2x3c4v5b6m'"

}
variable "default_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Default instance type"

}
// KEYS
variable "key" {
  type = string
  default = "robot-key"
}
variable "public_key_id" {
  type =string
  default = "ssh-rsa key"
}

// Elastic IP
variable "eip_attach" {
  type        = bool
  default     = false
  description = "Selector for ElasticIP: true == create and attach"
}

// EBS volume creation
variable "ebs_volume_size" {
  type = number
  default = 8
}
variable "ebs_availability_zone" {
  type = string
  default = "us-east-1"
}
variable "ebs_volume_type" {
  type = string
  default = "gp2"
}
variable "aws_subnet_id" {
  type = string
}
variable "aws_vpc_id" {
  type = string
}