locals {
  network_security_groups = { for k1, v1 in var.network_security_groups : k1 => { location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, security_rule = v1.security_rule, tags = v1.tags } }

  network_security_rules = merge([
    for k1, v1 in var.network_security_groups : {
      for k2, v2 in coalesce(v1.network_security_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_security_group_name = module.network_security_groups.network_security_groups["${k1}"].name
      })
    }
  ]...)
}

module "network_security_groups" {
  source                  = "git::https://github.com/AeternaModules/azurerm_network_security_group.git?ref=v4.80.0"
  network_security_groups = local.network_security_groups
}

module "network_security_rules" {
  source                 = "git::https://github.com/AeternaModules/azurerm_network_security_rule.git?ref=v4.80.0"
  network_security_rules = local.network_security_rules
  depends_on             = [module.network_security_groups]
}

