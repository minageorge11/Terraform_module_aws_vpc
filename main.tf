module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "prod-vpc"
  cidr = "10.50.0.0/16"

  azs             = ["us‑east‑1a", "us-east-1a", "us-west-1a"]
  private_subnets = ["10.50.1.0/26", "10.50.2.0/26", "10.50.3.0/26"]
  public_subnets  = ["10.50.1.0/26", "10.50.2.0/26", "10.50.3.0/26"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
