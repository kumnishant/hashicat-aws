module "vpc" {
  source  = "app.terraform.io/kumar-training/vpc/aws"
  version = "2.33.0"
  name = "my-vpc1"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.0.1/24", "10.0.0.2/24"]
  public_subnets  = ["10.0.0.3/24", "10.0.0.4/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}