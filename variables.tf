variable "private_endpoint_regional_modes" {
  description = <<EOT
Map of private_endpoint_regional_modes, attributes below
Required:
    - project_id
Optional:
    - enabled
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    project_id = string
    enabled    = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

