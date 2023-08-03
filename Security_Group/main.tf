terraform {
  cloud {
    organization = "IaC_Task"
#    hostname = "app.terraform.io"
#
     workspaces {
       name = "VPC"
     }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

module "security_group" {
  source = "github.com/adwordshin/terraform_module/module/Security_Group"

  vpc-name = "seoul-center"
  bastion-sg-name = "seoul-center-bastion-sg"
  eks-cluster-sg-name = "seoul-center-eks-cluster-sg"
}
