output "storage_table_entities_entity" {
  description = "Map of entity values across all storage_table_entities, keyed the same as var.storage_table_entities"
  value       = { for k, v in azurerm_storage_table_entity.storage_table_entities : k => v.entity }
}
output "storage_table_entities_partition_key" {
  description = "Map of partition_key values across all storage_table_entities, keyed the same as var.storage_table_entities"
  value       = { for k, v in azurerm_storage_table_entity.storage_table_entities : k => v.partition_key }
}
output "storage_table_entities_row_key" {
  description = "Map of row_key values across all storage_table_entities, keyed the same as var.storage_table_entities"
  value       = { for k, v in azurerm_storage_table_entity.storage_table_entities : k => v.row_key }
}
output "storage_table_entities_storage_table_id" {
  description = "Map of storage_table_id values across all storage_table_entities, keyed the same as var.storage_table_entities"
  value       = { for k, v in azurerm_storage_table_entity.storage_table_entities : k => v.storage_table_id }
}

