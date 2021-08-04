resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags = var.tags
  enable_dns_hostnames = true
  enable_dns_support = true
  instance_tenancy = "default"
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags = var.tags
}

//Получаем список доступных зон
data "aws_availability_zones" "all_az" {
  state = "available"
}

locals {
  az_num = length(data.aws_availability_zones.all_az.names)
}



//1. resource "" "" {} - для создания нового ресурса
//2. data "" "" {} - для получения каких то данных не созданных через terraform