terraform {
  backend "remote" {
    organization = "Attia-Dev-ops"

    workspaces {
      name = "dev-ops"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
