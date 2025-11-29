module "prod_elb" {
  source         = "app.terraform.io/PolarisTFE/elb/aws"
  version        = "1.0.0"
  tgname         = "Prod-TG"
  vpc_id         = module.prod_network.vpc_id
  env            = module.prod_network.env
  PrivateServers = module.prod_instance.PrivateEc2_id
  PublicServers  = module.prod_instance.PublicEc2_id
  nlbname        = "prodnlb"
  Public_subnets = module.prod_network.Public_Subnet_id
  sg_id          = module.prod_security.sg_id
}
