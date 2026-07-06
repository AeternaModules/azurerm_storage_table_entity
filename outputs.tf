output "storage_table_entities" {
  description = "All storage_table_entity resources"
  value       = azurerm_storage_table_entity.storage_table_entities
}
output "storage_table_entities_entity" {
  description = "List of entity values across all storage_table_entities"
  value       = [for k, v in azurerm_storage_table_entity.storage_table_entities : v.entity]
}
output "storage_table_entities_partition_key" {
  description = "List of partition_key values across all storage_table_entities"
  value       = [for k, v in azurerm_storage_table_entity.storage_table_entities : v.partition_key]
}
output "storage_table_entities_row_key" {
  description = "List of row_key values across all storage_table_entities"
  value       = [for k, v in azurerm_storage_table_entity.storage_table_entities : v.row_key]
}
output "storage_table_entities_storage_table_id" {
  description = "List of storage_table_id values across all storage_table_entities"
  value       = [for k, v in azurerm_storage_table_entity.storage_table_entities : v.storage_table_id]
}

