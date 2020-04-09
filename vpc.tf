module "vpc" {
  source  = "app.terraform.io/kumar-training/vpc/aws"
  version = "2.33.0"
  name = "my-vpc1"
  cidr = "0.0.0.0/0"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["0.0.1.0/0", "0.0.2.0/0", "0.0.3.0/0"]
  public_subnets  = ["0.0.4.0/0", "0.0.5.0/0", "0.0.6.0/0"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}