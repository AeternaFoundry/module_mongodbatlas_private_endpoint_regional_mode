resource "mongodbatlas_private_endpoint_regional_mode" "private_endpoint_regional_modes" {
  for_each = var.private_endpoint_regional_modes

  project_id = each.value.project_id
  enabled    = each.value.enabled

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

