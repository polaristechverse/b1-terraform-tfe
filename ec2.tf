module "prod_instance" {
  source  = "app.terraform.io/PolarisTFE/compute/aws"
  version = "1.0.0"
  ami = {
    "ap-south-1" = "ami-087d1c9a513324697"
    "us-east-1"  = "ami-0c398cb65a93047f2"
  }
  env           = module.prod_network.env
  region        = var.region
  instance_type = "t2.micro"
  key_name = {
    "ap-south-1" = "Default-Laptop_key"
    "us-east-1"  = "DEFAULT_LAPTOP_KEY"
  }
  subnet_id         = module.prod_network.Public_Subnet_id
  sg_id             = module.prod_security.sg_id
  vpc_name          = module.prod_network.vpc_name
  private_subnet_id = module.prod_network.Private_Subnet_id
  depends_on        = [module.prod_network]
}
