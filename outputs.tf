# --- azurerm_network_security_group ---
output "network_security_groups_id" {
  description = "Map of id values across all network_security_groups, keyed the same as var.network_security_groups"
  value       = module.network_security_groups.network_security_groups_id
}

output "network_security_groups_location" {
  description = "Map of location values across all network_security_groups, keyed the same as var.network_security_groups"
  value       = module.network_security_groups.network_security_groups_location
}

output "network_security_groups_name" {
  description = "Map of name values across all network_security_groups, keyed the same as var.network_security_groups"
  value       = module.network_security_groups.network_security_groups_name
}

output "network_security_groups_resource_group_name" {
  description = "Map of resource_group_name values across all network_security_groups, keyed the same as var.network_security_groups"
  value       = module.network_security_groups.network_security_groups_resource_group_name
}

output "network_security_groups_security_rule" {
  description = "Map of security_rule values across all network_security_groups, keyed the same as var.network_security_groups"
  value       = module.network_security_groups.network_security_groups_security_rule
}

output "network_security_groups_tags" {
  description = "Map of tags values across all network_security_groups, keyed the same as var.network_security_groups"
  value       = module.network_security_groups.network_security_groups_tags
}

# --- azurerm_network_security_rule ---
output "network_security_rules_id" {
  description = "Map of id values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_id
}

output "network_security_rules_access" {
  description = "Map of access values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_access
}

output "network_security_rules_description" {
  description = "Map of description values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_description
}

output "network_security_rules_destination_address_prefix" {
  description = "Map of destination_address_prefix values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_destination_address_prefix
}

output "network_security_rules_destination_address_prefixes" {
  description = "Map of destination_address_prefixes values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_destination_address_prefixes
}

output "network_security_rules_destination_application_security_group_ids" {
  description = "Map of destination_application_security_group_ids values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_destination_application_security_group_ids
}

output "network_security_rules_destination_port_range" {
  description = "Map of destination_port_range values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_destination_port_range
}

output "network_security_rules_destination_port_ranges" {
  description = "Map of destination_port_ranges values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_destination_port_ranges
}

output "network_security_rules_direction" {
  description = "Map of direction values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_direction
}

output "network_security_rules_name" {
  description = "Map of name values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_name
}

output "network_security_rules_network_security_group_name" {
  description = "Map of network_security_group_name values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_network_security_group_name
}

output "network_security_rules_priority" {
  description = "Map of priority values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_priority
}

output "network_security_rules_protocol" {
  description = "Map of protocol values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_protocol
}

output "network_security_rules_resource_group_name" {
  description = "Map of resource_group_name values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_resource_group_name
}

output "network_security_rules_source_address_prefix" {
  description = "Map of source_address_prefix values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_source_address_prefix
}

output "network_security_rules_source_address_prefixes" {
  description = "Map of source_address_prefixes values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_source_address_prefixes
}

output "network_security_rules_source_application_security_group_ids" {
  description = "Map of source_application_security_group_ids values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_source_application_security_group_ids
}

output "network_security_rules_source_port_range" {
  description = "Map of source_port_range values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_source_port_range
}

output "network_security_rules_source_port_ranges" {
  description = "Map of source_port_ranges values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = module.network_security_rules.network_security_rules_source_port_ranges
}


