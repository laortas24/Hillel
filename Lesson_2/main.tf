provider "aws" {
  region = "us-east-2"
}
locals {
  common_tags = {
    project = "Modules"
    company = "Hillel"
  }
}
module "instance" {
  source                 = "./modules/instance"
  ami_id                 = "ami-00399ec92321828f5"     //default "ami-0cf6f5c8a62fa5da6"
  default_instance_type  = "t2.micro"                  //default t2.micro
//  public_key_id          = ""                        //new public_key if not default
  eip_attach             = true
//  ebs_availability_zone  =  ""                         //default us-east-2a
  ebs_volume_size        = 2                          //default 8gb
//  ebs_volume_type        = ""                        //default gp2

}
module "vpc_creation" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  tags = merge(local.common_tags)
}
output "instance_ip" {
  value = module.instance.instance_ip
}
output "instance_id" {
  value = module.instance.instance_id
}