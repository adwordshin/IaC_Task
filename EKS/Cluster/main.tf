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

module "eks-cluster" {
  source = "github.com/adwordshin/terraform_module/module/EKS/Cluster"

  cluster-name="eks-cluster-seoul"
  cluster-sg-name="seoul-center-eks-cluster-sg"
}
