module "prod_network" {
  source              = "app.terraform.io/PolarisTFE/network/aws"
  version             = "1.0.0"
  vpc_cidr_block      = "172.16.0.0/16"
  vpc_name            = "PolarisProd"
  Public_Subnet_CIDR  = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
  Private_Subnet_CIDR = ["172.16.10.0/24", "172.16.20.0/24", "172.16.30.0/24"]
  az                  = ["us-east-1a", "us-east-1b", "us-east-1c"]
  env                 = "Prod"
  NGW_ID              = module.prod_nat.ngw_id
}
