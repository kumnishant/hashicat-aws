module "vpc" {
  source  = "app.terraform.io/kumar-training/vpc/aws"
  version = "2.33.0"
  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/16", "10.0.2.0/16", "10.0.3.0/16"]
  public_subnets  = ["10.0.101.0/16", "10.0.102.0/16", "10.0.103.0/16"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}