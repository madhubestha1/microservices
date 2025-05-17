module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = "madhu"
  vpc_cidr             = "10.0.0.0/16"
  private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_names = ["private_subnet_1", "private_subnet_2", "private_subnet_3"]
  public_subnet_cidrs  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  public_subnet_names  = ["public_subnet_1", "public_subnet_2", "public_subnet_3"]
}

module "ecr" {
  source          = "./modules/ecr"
  repository_name = "my_app"
}

module "eks" {
  source           = "./modules/eks"
  subnet_ids       = module.vpc.private_subnet_ids
  cluster_name     = "my_app"
  node_group_name  = "my_app_node_group"
  desired_capacity = 2
  max_size         = 3
  min_size         = 1
  instance_type    = "t3.medium"
}

