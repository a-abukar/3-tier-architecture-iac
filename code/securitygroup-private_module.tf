# Security group for Public EC2 Instance
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name        = "private-sg"
  description = "Security Group with HTTP & SSH port open for entire VPC block (IPv4 CIDR), egress to all"
  vpc_id      = module.vpc.vpc_id
  # Ingress Rules & CIDR blocks
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  # Egress Rules
  egress_rules = ["all-all"]
  tags         = local.common_tags
}