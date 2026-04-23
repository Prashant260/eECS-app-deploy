output "backend_repo_url" {
  value = module.ecr.backend_repo_url
}
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "alb_dns" {
  value = module.ecs.alb_dns
}

output "cloudwatch_log_group" {
  value = module.ecs.cloudwatch_log_group
}

output "cloudwatch_dashboard_url" {
  value = module.ecs.cloudwatch_dashboard_url
}