variable "core_volumes" {
  description = <<EOT
Map of core_volumes, attributes below
Required:
    - availability_domain
    - compartment_id
Optional:
    - backup_policy_id
    - block_volume_replicas_deletion
    - cluster_placement_group_id
    - defined_tags
    - display_name
    - freeform_tags
    - is_auto_tune_enabled
    - is_reservations_enabled
    - kms_key_id
    - size_in_gbs
    - size_in_mbs
    - volume_backup_id
    - vpus_per_gb
    - xrc_kms_key_id
    - autotune_policies (block):
        - autotune_type (required)
        - max_vpus_per_gb (optional)
    - block_volume_replicas (block):
        - availability_domain (required)
        - display_name (optional)
        - xrr_kms_key_id (optional)
    - source_details (block):
        - change_block_size_in_bytes (optional)
        - first_backup_id (optional)
        - id (optional)
        - second_backup_id (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    availability_domain            = string
    compartment_id                 = string
    backup_policy_id               = optional(string)
    block_volume_replicas_deletion = optional(bool)
    cluster_placement_group_id     = optional(string)
    defined_tags                   = optional(map(string))
    display_name                   = optional(string)
    freeform_tags                  = optional(map(string))
    is_auto_tune_enabled           = optional(bool)
    is_reservations_enabled        = optional(bool)
    kms_key_id                     = optional(string)
    size_in_gbs                    = optional(string)
    size_in_mbs                    = optional(string)
    volume_backup_id               = optional(string)
    vpus_per_gb                    = optional(string)
    xrc_kms_key_id                 = optional(string)
    autotune_policies = optional(list(object({
      autotune_type   = string
      max_vpus_per_gb = optional(string)
    })))
    block_volume_replicas = optional(list(object({
      availability_domain = string
      display_name        = optional(string)
      xrr_kms_key_id      = optional(string)
    })))
    source_details = optional(object({
      change_block_size_in_bytes = optional(string)
      first_backup_id            = optional(string)
      id                         = optional(string)
      second_backup_id           = optional(string)
      type                       = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_volumes : (
        v.autotune_policies == null || alltrue([for item in v.autotune_policies : (contains([for v in ["DETACHED_VOLUME", "PERFORMANCE_BASED"] : lower(v)], lower(item.autotune_type)))])
      )
    ])
    error_message = "must be one of: \"DETACHED_VOLUME\", \"PERFORMANCE_BASED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_volumes : (
        v.source_details == null || (contains([for v in ["blockVolumeReplica", "volume", "volumeBackup", "volumeBackupDelta"] : lower(v)], lower(v.source_details.type)))
      )
    ])
    error_message = "must be one of: \"blockVolumeReplica\", \"volume\", \"volumeBackup\", \"volumeBackupDelta\""
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

