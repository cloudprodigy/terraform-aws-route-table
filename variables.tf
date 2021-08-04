
variable "route_table_name" {
  description = "Route table name"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to be passed to route table"
  type        = list(string)
  default     = []
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "route_table_tags" {
  description = "Tags to be applied on route table"
  type        = map(string)
  default     = {}
}

variable "routes" {
  description = "Configuration block of routes."
  type        = list(map(string))
  default     = []
}

variable "tag_application" {
  description = "Application tag"
  type        = string

}

variable "tag_team" {
  description = "Team tag"
  type        = string

}

variable "environment" {
  description = "Provide appropriate environment name"
  type        = string

  validation {
    condition = contains([
      "dev",
      "development",
      "uat",
      "production",
      "prod",
      "sandbox",
      "transit",
      "vault",
      "shared"
    ], var.environment)

    error_message = "The environment value is not valid. Valid values are dev/development/uat/prod/production/sandbox/transit/vault/shared."
  }
}

locals {
  common_tags = {
    Application = var.tag_application
    Team        = var.tag_team
    environment = var.environment
  }
}