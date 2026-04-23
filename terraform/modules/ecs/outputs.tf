output "alb_dns" {
  value = aws_lb.main.dns_name
}

output "cloudwatch_log_group" {
  value = aws_cloudwatch_log_group.ecs_backend.name
}

output "cloudwatch_dashboard_url" {
  value = "https://console.aws.amazon.com/cloudwatch/home?region=ap-south-1#dashboards:name=${aws_cloudwatch_dashboard.ecs_dashboard.dashboard_name}"
}
