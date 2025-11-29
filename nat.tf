module "prod_nat" {
  source          = "app.terraform.io/PolarisTFE/nat/aws"
  version         = "1.0.0"
  env             = module.prod_network.env
  vpc_name        = module.prod_network.vpc_name
  Public_Subnet_1 = module.prod_network.Public_Subnet_id_1
}
