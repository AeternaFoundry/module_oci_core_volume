resource "oci_core_volume" "core_volumes" {
  for_each = var.core_volumes

  availability_domain            = each.value.availability_domain
  compartment_id                 = each.value.compartment_id
  backup_policy_id               = each.value.backup_policy_id
  block_volume_replicas_deletion = each.value.block_volume_replicas_deletion
  cluster_placement_group_id     = each.value.cluster_placement_group_id
  defined_tags                   = each.value.defined_tags
  display_name                   = each.value.display_name
  freeform_tags                  = each.value.freeform_tags
  is_auto_tune_enabled           = each.value.is_auto_tune_enabled
  is_reservations_enabled        = each.value.is_reservations_enabled
  kms_key_id                     = each.value.kms_key_id
  size_in_gbs                    = each.value.size_in_gbs
  size_in_mbs                    = each.value.size_in_mbs
  volume_backup_id               = each.value.volume_backup_id
  vpus_per_gb                    = each.value.vpus_per_gb
  xrc_kms_key_id                 = each.value.xrc_kms_key_id

  dynamic "autotune_policies" {
    for_each = each.value.autotune_policies != null ? each.value.autotune_policies : []
    content {
      autotune_type   = autotune_policies.value.autotune_type
      max_vpus_per_gb = autotune_policies.value.max_vpus_per_gb
    }
  }

  dynamic "block_volume_replicas" {
    for_each = each.value.block_volume_replicas != null ? each.value.block_volume_replicas : []
    content {
      availability_domain = block_volume_replicas.value.availability_domain
      display_name        = block_volume_replicas.value.display_name
      xrr_kms_key_id      = block_volume_replicas.value.xrr_kms_key_id
    }
  }

  dynamic "source_details" {
    for_each = each.value.source_details != null ? [each.value.source_details] : []
    content {
      change_block_size_in_bytes = source_details.value.change_block_size_in_bytes
      first_backup_id            = source_details.value.first_backup_id
      id                         = source_details.value.id
      second_backup_id           = source_details.value.second_backup_id
      type                       = source_details.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

