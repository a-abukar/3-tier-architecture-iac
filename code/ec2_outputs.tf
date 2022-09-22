
# Public
output "ec2_bastion_public_instance_ids" {
  description = "The ID of the instance"
  value       = module.ec2_public.id
}

output "ec2_bastion_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_public.public_ip
}

# Private
output "ec2_private_instance_ids" {
  description = "The ID of the instance"
  # value       = module.ec2_private.id
  value = [for ec2private in module.ec2_private : ec2private.id]
}

output "ec2_private_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  # value       = module.ec2_private.public_ip
  value = [for ec2private in module.ec2_private : ec2private.private_ip]
}