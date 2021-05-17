terraform {
    required_version = "~> 0.14"
    required_providers {

    aws = {
        version = "~> 3.21"

      }
    }
}

provider "aws" {
  access_key = "AKIAZ2VJPR7WR2LNPITC"
  secret_key = "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"
  region = "us-east-2"
}

