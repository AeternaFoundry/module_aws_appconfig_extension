output "appconfig_extensions_id" {
  description = "Map of id values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appconfig_extensions_action_point" {
  description = "Map of action_point values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.action_point if v.action_point != null && length(v.action_point) > 0 }
}
output "appconfig_extensions_arn" {
  description = "Map of arn values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appconfig_extensions_description" {
  description = "Map of description values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appconfig_extensions_name" {
  description = "Map of name values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appconfig_extensions_parameter" {
  description = "Map of parameter values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.parameter if v.parameter != null && length(v.parameter) > 0 }
}
output "appconfig_extensions_region" {
  description = "Map of region values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appconfig_extensions_tags" {
  description = "Map of tags values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appconfig_extensions_tags_all" {
  description = "Map of tags_all values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "appconfig_extensions_version" {
  description = "Map of version values across all appconfig_extensions, keyed the same as var.appconfig_extensions"
  value       = { for k, v in aws_appconfig_extension.appconfig_extensions : k => v.version if v.version != null }
}

