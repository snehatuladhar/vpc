variable "vpc_cidr_block" {
  description = "CIDR Value defined"
  type        = string
  default     = "10.0.0.0/16"
}
variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b"]
}
variable "public_subnets" {
  type        = list(string)
  description = "Public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "private_subnets" {
  type        = list(string)
  description = "Private subnets"
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}