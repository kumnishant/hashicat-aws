module "vpc" {
  source  = "app.terraform.io/kumar-training/vpc/aws"
  version = "2.33.0"
  name = "my-vpc1"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a"]
  private_subnets = ["10.0.0.0/24"]
  public_subnets  = []

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}