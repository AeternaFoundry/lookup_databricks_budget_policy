variable "budget_policy_lookup" {
  description = <<EOT
Map of budget_policy_lookup, attributes below
Required:
    - policy_id
EOT

  type = map(object({
    policy_id = string
  }))
}

