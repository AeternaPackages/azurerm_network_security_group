variable "network_security_groups" {
  description = <<EOT
Map of network_security_groups, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - tags
    - security_rule (block)
Nested network_security_rules (azurerm_network_security_rule):
    Required:
        - access
        - direction
        - name
        - priority
        - protocol
        - resource_group_name
    Optional:
        - description
        - destination_address_prefix
        - destination_address_prefixes
        - destination_application_security_group_ids
        - destination_port_range
        - destination_port_ranges
        - source_address_prefix
        - source_address_prefixes
        - source_application_security_group_ids
        - source_port_range
        - source_port_ranges
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    tags                = optional(map(string))
    security_rule = optional(object({
      access                                     = string
      description                                = optional(string)
      destination_address_prefix                 = optional(string)
      destination_address_prefixes               = optional(set(string))
      destination_application_security_group_ids = optional(set(string))
      destination_port_range                     = optional(string)
      destination_port_ranges                    = optional(set(string))
      direction                                  = string
      name                                       = string
      priority                                   = number
      protocol                                   = string
      source_address_prefix                      = optional(string)
      source_address_prefixes                    = optional(set(string))
      source_application_security_group_ids      = optional(set(string))
      source_port_range                          = optional(string)
      source_port_ranges                         = optional(set(string))
    }))
    network_security_rules = optional(map(object({
      access                                     = string
      direction                                  = string
      name                                       = string
      priority                                   = number
      protocol                                   = string
      resource_group_name                        = string
      source_application_security_group_ids      = optional(set(string))
      source_address_prefixes                    = optional(set(string))
      source_address_prefix                      = optional(string)
      destination_port_ranges                    = optional(set(string))
      destination_address_prefixes               = optional(set(string))
      destination_application_security_group_ids = optional(set(string))
      source_port_range                          = optional(string)
      destination_address_prefix                 = optional(string)
      description                                = optional(string)
      destination_port_range                     = optional(string)
      source_port_ranges                         = optional(set(string))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.network_security_groups) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.network_security_groups : [for kk in keys(coalesce(v0.network_security_rules, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
