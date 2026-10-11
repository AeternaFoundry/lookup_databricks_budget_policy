output "budget_policy_lookup_binding_workspace_ids" {
  description = "Map of binding_workspace_ids values across all budget_policy_lookup, keyed the same as var.budget_policy_lookup except keys with no binding_workspace_ids are omitted"
  value       = { for k, v in data.databricks_budget_policy.budget_policy_lookup : k => v.binding_workspace_ids if v.binding_workspace_ids != null && length(v.binding_workspace_ids) > 0 }
}
output "budget_policy_lookup_custom_tags" {
  description = "Map of custom_tags values across all budget_policy_lookup, keyed the same as var.budget_policy_lookup except keys with no custom_tags are omitted"
  value       = { for k, v in data.databricks_budget_policy.budget_policy_lookup : k => v.custom_tags if v.custom_tags != null && length(v.custom_tags) > 0 }
}
output "budget_policy_lookup_policy_id" {
  description = "Map of policy_id values across all budget_policy_lookup, keyed the same as var.budget_policy_lookup except keys with no policy_id are omitted"
  value       = { for k, v in data.databricks_budget_policy.budget_policy_lookup : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "budget_policy_lookup_policy_name" {
  description = "Map of policy_name values across all budget_policy_lookup, keyed the same as var.budget_policy_lookup except keys with no policy_name are omitted"
  value       = { for k, v in data.databricks_budget_policy.budget_policy_lookup : k => v.policy_name if v.policy_name != null && length(v.policy_name) > 0 }
}

