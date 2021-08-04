provider "aws" {
  region = "us-east-1"
}
locals {
  common_tags = {
    project = "Modules"
    company = "Hillel"
  }
}
module "instance" {
  source                 = "./modules/instance"
  ami_id                 = module.instance.aws_ami //default "ami-0cf6f5c8a62fa5da6"
  default_instance_type  = "t2.micro"                  //default t2.micro
//  public_key_id          = ""                        //new public_key if not default
  eip_attach             = false
  ebs_availability_zone  =  "us-east-1a"                         //default us-west-2a
  ebs_volume_size        = 2                          //default 8gb
//  ebs_volume_type       = ""                        //default gp2
  aws_subnet_id          = module.vpc_creation.private_networks[0]
  aws_vpc_id             = module.vpc_creation.aws_vpc_id
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