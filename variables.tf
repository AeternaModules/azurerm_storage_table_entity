variable "storage_table_entities" {
  description = <<EOT
Map of storage_table_entities, attributes below
Required:
    - entity
    - partition_key
    - row_key
    - storage_table_id
EOT

  type = map(object({
    entity           = map(string)
    partition_key    = string
    row_key          = string
    storage_table_id = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_table_entity's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: storage_table_id
  #   source:    [from tables.ValidateTableID] !ok
  # path: storage_table_id
  #   source:    [from tables.ValidateTableID] err != nil
  # path: partition_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: row_key
  #   condition: length(value) > 0
  #   message:   must not be empty
}

