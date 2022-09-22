# EC2 variables
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 key pair that needs to be associated with EC2"
  type        = string
  default     = "terraform-key"
}

variable "private_instance_count" {
  description = "AWS EC2 Private Instance Count"
  type        = number
  default     = 1
}