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
  access_key = "AKIAZ2VJPR7WYI7UYKOW"
  secret_key = "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"
  region = "us-west-2"


}