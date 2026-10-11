output "core_volumes_id" {
  description = "Map of id values across all core_volumes, keyed the same as var.core_volumes except keys with no id are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_volumes_auto_tuned_vpus_per_gb" {
  description = "Map of auto_tuned_vpus_per_gb values across all core_volumes, keyed the same as var.core_volumes except keys with no auto_tuned_vpus_per_gb are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.auto_tuned_vpus_per_gb if v.auto_tuned_vpus_per_gb != null && length(v.auto_tuned_vpus_per_gb) > 0 }
}
output "core_volumes_autotune_policies" {
  description = "Map of autotune_policies values across all core_volumes, keyed the same as var.core_volumes except keys with no autotune_policies are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.autotune_policies if v.autotune_policies != null && length(v.autotune_policies) > 0 }
}
output "core_volumes_availability_domain" {
  description = "Map of availability_domain values across all core_volumes, keyed the same as var.core_volumes except keys with no availability_domain are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "core_volumes_backup_policy_id" {
  description = "Map of backup_policy_id values across all core_volumes, keyed the same as var.core_volumes except keys with no backup_policy_id are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.backup_policy_id if v.backup_policy_id != null && length(v.backup_policy_id) > 0 }
}
output "core_volumes_block_volume_replicas" {
  description = "Map of block_volume_replicas values across all core_volumes, keyed the same as var.core_volumes except keys with no block_volume_replicas are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.block_volume_replicas if v.block_volume_replicas != null && length(v.block_volume_replicas) > 0 }
}
output "core_volumes_block_volume_replicas_deletion" {
  description = "Map of block_volume_replicas_deletion values across all core_volumes, keyed the same as var.core_volumes except keys with no block_volume_replicas_deletion are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.block_volume_replicas_deletion if v.block_volume_replicas_deletion != null }
}
output "core_volumes_cluster_placement_group_id" {
  description = "Map of cluster_placement_group_id values across all core_volumes, keyed the same as var.core_volumes except keys with no cluster_placement_group_id are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.cluster_placement_group_id if v.cluster_placement_group_id != null && length(v.cluster_placement_group_id) > 0 }
}
output "core_volumes_compartment_id" {
  description = "Map of compartment_id values across all core_volumes, keyed the same as var.core_volumes except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_volumes_defined_tags" {
  description = "Map of defined_tags values across all core_volumes, keyed the same as var.core_volumes except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_volumes_display_name" {
  description = "Map of display_name values across all core_volumes, keyed the same as var.core_volumes except keys with no display_name are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_volumes_freeform_tags" {
  description = "Map of freeform_tags values across all core_volumes, keyed the same as var.core_volumes except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_volumes_is_auto_tune_enabled" {
  description = "Map of is_auto_tune_enabled values across all core_volumes, keyed the same as var.core_volumes except keys with no is_auto_tune_enabled are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.is_auto_tune_enabled if v.is_auto_tune_enabled != null }
}
output "core_volumes_is_hydrated" {
  description = "Map of is_hydrated values across all core_volumes, keyed the same as var.core_volumes except keys with no is_hydrated are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.is_hydrated if v.is_hydrated != null }
}
output "core_volumes_is_reservations_enabled" {
  description = "Map of is_reservations_enabled values across all core_volumes, keyed the same as var.core_volumes except keys with no is_reservations_enabled are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.is_reservations_enabled if v.is_reservations_enabled != null }
}
output "core_volumes_kms_key_id" {
  description = "Map of kms_key_id values across all core_volumes, keyed the same as var.core_volumes except keys with no kms_key_id are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "core_volumes_size_in_gbs" {
  description = "Map of size_in_gbs values across all core_volumes, keyed the same as var.core_volumes except keys with no size_in_gbs are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.size_in_gbs if v.size_in_gbs != null && length(v.size_in_gbs) > 0 }
}
output "core_volumes_size_in_mbs" {
  description = "Map of size_in_mbs values across all core_volumes, keyed the same as var.core_volumes except keys with no size_in_mbs are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.size_in_mbs if v.size_in_mbs != null && length(v.size_in_mbs) > 0 }
}
output "core_volumes_source_details" {
  description = "Map of source_details values across all core_volumes, keyed the same as var.core_volumes except keys with no source_details are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => one(v.source_details) if v.source_details != null && length(v.source_details) > 0 }
}
output "core_volumes_state" {
  description = "Map of state values across all core_volumes, keyed the same as var.core_volumes except keys with no state are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_volumes_system_tags" {
  description = "Map of system_tags values across all core_volumes, keyed the same as var.core_volumes except keys with no system_tags are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "core_volumes_time_created" {
  description = "Map of time_created values across all core_volumes, keyed the same as var.core_volumes except keys with no time_created are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_volumes_volume_backup_id" {
  description = "Map of volume_backup_id values across all core_volumes, keyed the same as var.core_volumes except keys with no volume_backup_id are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.volume_backup_id if v.volume_backup_id != null && length(v.volume_backup_id) > 0 }
}
output "core_volumes_volume_group_id" {
  description = "Map of volume_group_id values across all core_volumes, keyed the same as var.core_volumes except keys with no volume_group_id are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.volume_group_id if v.volume_group_id != null && length(v.volume_group_id) > 0 }
}
output "core_volumes_vpus_per_gb" {
  description = "Map of vpus_per_gb values across all core_volumes, keyed the same as var.core_volumes except keys with no vpus_per_gb are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.vpus_per_gb if v.vpus_per_gb != null && length(v.vpus_per_gb) > 0 }
}
output "core_volumes_xrc_kms_key_id" {
  description = "Map of xrc_kms_key_id values across all core_volumes, keyed the same as var.core_volumes except keys with no xrc_kms_key_id are omitted"
  value       = { for k, v in oci_core_volume.core_volumes : k => v.xrc_kms_key_id if v.xrc_kms_key_id != null && length(v.xrc_kms_key_id) > 0 }
}

