variable "k8s_version" {
  default = "1.33"
}

variable "eks_cluster_name" {
  default = "my-eks-cluster"
}

variable "bucket_name" {
  description = "The name of the S3 bucket."
  default = "my-cool-pic-bucket-with-randomness-123456"

}
### Best in AWS Secrets Manager for production use ###
variable "db_name" {
  description = "The name of the PostgreSQL database."
  default     = "mydatabase"
}

variable "db_username" {
  description = "The username for the PostgreSQL database."
  default     = "mohamed"
}

variable "db_password" {
  description = "The password for the PostgreSQL database."
  default     = "changeme123"
}

