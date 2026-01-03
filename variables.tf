variable "k8s_version" {
  default = "1.33"
}

variable "eks_cluster_name" {
  default = "my-eks-cluster"
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

