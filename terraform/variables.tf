#
# variables
#

variable "ecs_deploy_version" {
  description = "ecs deploy version"
  default     = "latest"
}

variable "ecs_deploy_debug" {
  description = "ecs deploy debug"
  default     = "false"
}

variable "cluster_name" {
  description = "Cluster name"
  default     = "services"
}

variable "cluster_domain" {
  description = "Domain to use for ALB"
}

variable "alb_internal" {
  description = "true if ALB needs to be internal"
  default     = "false"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "vpc_private_subnets" {
  description = "VPC private subnets"
  type        = "list"
}

variable "vpc_public_subnets" {
  description = "VPC public subnets"
  type        = "list"
}

variable "aws_region" {
  description = "The AWS region to create things in."
}

variable "aws_env" {
  description = "environment to use"
}

variable "instance_type" {
  description = "instance type"
}

variable "ssh_key_name" {
  description = "ssh key name"
}

variable "cluster_minsize" {
  description = "minimum size of cluster"
}

variable "cluster_maxsize" {
  description = "maximum size of cluster"
}

variable "cluster_desired_capacity" {
  description = "desired capacity of cluster"
}

variable "cluster_termination_policies" {
  description = "Termination policies of cluster"
  default     = ["OldestLaunchTemplate", "OldestInstance"]
}

variable "paramstore_enabled" {
  description = "Enable parameter store"
}

variable "saml_enabled" {
  description = "Enable SAML auth"
  default     = "no"
}

variable "saml_metadata_url" {
  description = "SAML metadata url"
  default     = "https://identityprovider/metadata.xml"
}

variable "create_kms_key" {
  description = "Create a KMS key for ssm or use default ssm key"
}

variable "cpu_credits" {
  description = "CPU credits type for launch template"
  default     = "standard"
}

variable "url_prefix" {
  description = "URL prefix"
  default     = "/ecs-deploy"
}

variable "fixed_response_content_type" {
  description = "fixed response content type"
  default = "text/plain"
}

variable "fixed_response_code" {
  description = "fixed response http code"
  default = "404"
}

variable "fixed_response_body" {
  description = "fixed response body"
  default = "No service configured at this address"
}

variable "paramstore_assume_role" {
  description = "assume role when using paramstore"
  default = ""
}

variable "autoscaling_strategies" {
  description = "enable/disable autoscaling strategies"
  default = ""
}
