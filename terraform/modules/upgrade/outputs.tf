## Copyright (c) 2019 - 2023 Oracle and/or its affiliates.
## Licensed under the Universal Permissive License v1.0 as shown at https://oss.oracle.com/licenses/upl.


output "private_ip" {
  value = oci_core_instance.target_instance.private_ip
}

output "public_ip" {
  value = oci_core_instance.target_instance.public_ip
}

output "node_id" {
  value = oci_core_instance.target_instance.id
}

output "display_name" {
  value = oci_core_instance.target_instance.display_name
}

output "domain_name" {
  value = oci_core_instance.target_instance.hostname_label
}

output "backup_bucket_name" {
  value = (var.instanceUpgrade19c34 || var.instanceUpgrade19c23 || var.instanceUpgrade21c01) ? try(local.target_extendedMetadata.database.backup_bucket.name,""): (var.instanceUpgrade19c02? "": local.target_extendedMetadata.backup_bucket.name)
}

output "metadata_bucket_name" {
  value = local.target_extendedMetadata.metadata_bucket.name
}

output "stack_resource_id" {
  value = local.stack_resource_id
}

output "stack_id" {
  value = local.stack_id
}

output "rcu_schema_prefix"{
  value = var.instanceSchemaPrefix
}

output "bucket_namespace" {
  value = var.instanceUpgrade19c02? data.oci_objectstorage_namespace.objectstorage_ns.namespace: null
}

output "bucket_name" {
  value = var.instanceUpgrade19c02? oci_objectstorage_bucket.metadata_bucket19c02[0].name: null
}


