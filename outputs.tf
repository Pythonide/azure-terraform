output "resource_group_name" {
  value = module.network.resource_group_name
}

output "resource_group_location" {
  value = module.network.location
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "public_ip" {
  value = module.compute.public_ip
}