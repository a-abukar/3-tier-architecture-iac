module "ec2_private" {
  depends_on = [module.vpc]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "3.3.0"
  # insert the 34 required variables here
  for_each = toset(["0", "1"])
  name     = "${var.environment}-vm"
  # instance_count = 5

  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  # monitoring             = true
  vpc_security_group_ids = [module.private_sg.this_security_group_vpc_id]
  # subnet_id             = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  subnet_id = element(module.vpc.private_subnets, tonumber(each.key))
  # instance_count         = 3
  tags      = local.common_tags

}