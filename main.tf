module "network" {
  
  source                  = "./network"
  vpc_cidr                 = var.vpc_cidr
  public_subnet           = var.public_subnet
  public_avaibility_zone  = var.public_avaibility_zone
  region                  = var.region

}
module "ec2" {
  
  source = "./ec2"
  instances = [{
    ami            = data.aws_ami.ubuntu.id,
    instance_type  = "t2.micro",
    subnet         = module.network.public_subnets[0],
    key_name       = "ali"
    security_group = module.network.security_group.id,
    tags           = "jenkins"

    },
      {
      ami            = data.aws_ami.ubuntu.id,
      instance_type  = "t2.micro",
      subnet         = module.network.public_subnets[0],
      key_name       = "ali"
      security_group = module.network.security_group.id,
      tags           = "agent"

    }  
  ]
  
}



