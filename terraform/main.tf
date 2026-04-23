
module "vpc" {
  source = "./modules/vpc"
}

module "ecr" {
  source = "./modules/ecr"
}
module "ecs" {
  source = "./modules/ecs"

  project_name       = "two-tier-app"
  vpc_id             = module.vpc.vpc_id
  subnets            = module.vpc.public_subnets
  ecr_backend_url    = module.ecr.backend_repo_url
  execution_role_arn = "arn:aws:iam::179832230574:role/terraform"
}