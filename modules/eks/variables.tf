variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "subnet_ids" {
  description = "EKS deploy subnet IDs"
  type        = list(string)
}

variable "node_group_name" {
  description = "EKS Cluster NodeGroup Name"
  type        = string
}

variable "desired_capacity" {
  description = "EKS Cluster desired count"
  type        = number
}

variable "max_size" {
  description = "EKS Cluster max count"
  type        = number
}

variable "min_size" {
  description = "EKS Cluster min count"
  type        = number
}

variable "instance_type" {
  description = "EKS Cluster instance type"
  type        = string
}
