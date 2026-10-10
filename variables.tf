variable "appconfig_extensions" {
  description = <<EOT
Map of appconfig_extensions, attributes below
Required:
    - name
    - action_point (block):
        - action (required, block):
            - description (optional)
            - name (required)
            - role_arn (optional)
            - uri (required)
        - point (required)
Optional:
    - description
    - region
    - tags
    - tags_all
    - parameter (block):
        - description (optional)
        - name (required)
        - required (optional)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    action_point = list(object({
      action = list(object({
        description = optional(string)
        name        = string
        role_arn    = optional(string)
        uri         = string
      }))
      point = string
    }))
    parameter = optional(list(object({
      description = optional(string)
      name        = string
      required    = optional(bool)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appconfig_extensions : (
        length(v.action_point) >= 1
      )
    ])
    error_message = "Each action_point list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.appconfig_extensions : (
        alltrue([for item in v.action_point : (length(item.action) >= 1)])
      )
    ])
    error_message = "Each action list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

