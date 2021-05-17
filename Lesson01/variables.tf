variable "ami_id" {
  type        = string
  default     = "ami-00399ec92321828f5"
  description = "ID of the AMI in a format 'ami-1z2x3c4v5b6m'"

}
variable "eip_attach" {
  type        = bool
  default     = true
  description = "Selector for ElasticIP: true == create and attach"
}
variable "instancetype"  {
  type        = string
  default     = "t3.micro"
  description = "typeinstance"
}