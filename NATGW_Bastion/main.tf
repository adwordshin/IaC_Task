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

module "eip-natgw" {
  source = "github.com/adwordshin/terraform_module/module/NATGW_Bastion"

  vpc-name = "seoul-center"
  pub-2a-name = "seoul-pub-2a"
  pvt-rtb-name = "seoul-pvt-rtb"
  
  eip-name = "eip-seoul-center"
  natgw-name = "nat-gw-seoul-center"

  bastion-sg-name = "seoul-center-bastion-sg"
}
