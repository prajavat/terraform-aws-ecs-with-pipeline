variable "region" {
  type        = string
  default     = "us-east-1"
}

# Application Variable
variable "name" {
  type        = string
  default     = "example"
}

variable "stage" {
  type        = string
  default     = "prod"
}

######## Codecommit/Repo Variable ########
variable "repo_name" {
  type        = string
  default     = "Irinbridge-laravel"
}

variable "branch" {
  type        = string
  default     = "master"
}

######## CodeBuild Variable ########
variable "build_image" {
  type        = string
  default     = "aws/codebuild/standard:1.0"
}

variable "build_compute_type" {
  type        = string
  default     = "BUILD_GENERAL1_SMALL"
}

variable "build_timeout" {
  type        = number
  default     = 60
}

variable "buildspec" {
  type        = string
  default     = "buildspec.yml"
}

variable "privileged_mode" {
  type        = bool
  default     = true
}

####### Required Variable ########
variable "environment_variables" {
  type = list(object(
    {
      name  = string
      value = string
  }))

  default     = []
}

variable "s3_bucket_force_destroy" {
  type        = bool
  default     = false
}

variable "enabled" {
  type        = bool
  default     = true
}

variable "badge_enabled" {
  type        = bool
  default     = false
}

variable "cache_bucket_suffix_enabled" {
  type        = bool
  default     = true
  description = "The cache bucket generates a random 13 character string to generate a unique bucket name. If set to false it uses terraform-null-label's id value"
}
