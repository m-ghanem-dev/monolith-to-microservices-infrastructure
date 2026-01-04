variable "k8s_version" {
  default = "1.33"
}

variable "eks_cluster_name" {
  default = "my-eks-cluster"
}

variable "bucket_name" {
  default = "my-cool_pic_bucket_with_randomness-123456"
}

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

