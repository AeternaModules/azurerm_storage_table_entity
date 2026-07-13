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
  validation {
    condition = alltrue([
      for k, v in var.storage_table_entities : (
        length(v.partition_key) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_table_entities : (
        length(v.row_key) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

