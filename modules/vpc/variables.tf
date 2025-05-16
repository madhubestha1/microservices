variable "vpc_cidr" {
  description = "VPC cidrs"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "Private subnet cidrs"
  type        = list(string)
}

variable "private_subnet_names" {
  description = "Private subnet names"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "Public subnet cidrs"
  type        = list(string)
}

variable "public_subnet_names" {
  description = "Public subnet list"
  type        = list(string)
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}