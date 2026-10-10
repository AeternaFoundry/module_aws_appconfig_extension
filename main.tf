resource "aws_appconfig_extension" "appconfig_extensions" {
  for_each = var.appconfig_extensions

  name        = each.value.name
  description = each.value.description
  region      = each.value.region
  tags        = each.value.tags
  tags_all    = each.value.tags_all

  dynamic "action_point" {
    for_each = each.value.action_point
    content {
      dynamic "action" {
        for_each = action_point.value.action
        content {
          description = action.value.description
          name        = action.value.name
          role_arn    = action.value.role_arn
          uri         = action.value.uri
        }
      }
      point = action_point.value.point
    }
  }

  dynamic "parameter" {
    for_each = each.value.parameter != null ? each.value.parameter : []
    content {
      description = parameter.value.description
      name        = parameter.value.name
      required    = parameter.value.required
    }
  }
}

