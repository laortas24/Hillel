terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20"
    }
  }
  required_version = ">= 0.14"
}
provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-west-2"


}
