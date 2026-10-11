data "databricks_budget_policy" "budget_policy_lookup" {
  for_each = var.budget_policy_lookup

  policy_id = each.value.policy_id
}

