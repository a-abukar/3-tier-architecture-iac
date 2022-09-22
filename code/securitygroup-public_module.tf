module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name        = "public-bastion-sg"
  description = "Security Group with SSH port open for everybody(IPV4), egress ports are open to the world"
  vpc_id      = module.vpc.vpc_id
  # Ingress Rules & CIDR blocks
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # Egress Rules
  egress_rules = ["all-all"]
  tags         = local.common_tags
}