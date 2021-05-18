terraform {
    required_version = "~> 0.14"
    required_providers {

    aws = {
        version = "~> 3.21"

      }
    }
}

provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-2"
}

