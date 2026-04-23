variable "project_name" {}
variable "vpc_id" {}
variable "subnets" {
  type = list(string)
}
variable "ecr_backend_url" {}
variable "execution_role_arn" {}