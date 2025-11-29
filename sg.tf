module "prod_security" {
  source   = "app.terraform.io/PolarisTFE/security/aws"
  version  = "1.0.0"
  vpc_id   = module.prod_network.vpc_id
  vpc_name = module.prod_network.vpc_name
  env      = module.prod_network.env
}
