output "ecr_lifecycle_policies_id" {
  description = "Map of id values across all ecr_lifecycle_policies, keyed the same as var.ecr_lifecycle_policies"
  value       = { for k, v in aws_ecr_lifecycle_policy.ecr_lifecycle_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecr_lifecycle_policies_policy" {
  description = "Map of policy values across all ecr_lifecycle_policies, keyed the same as var.ecr_lifecycle_policies"
  value       = { for k, v in aws_ecr_lifecycle_policy.ecr_lifecycle_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "ecr_lifecycle_policies_region" {
  description = "Map of region values across all ecr_lifecycle_policies, keyed the same as var.ecr_lifecycle_policies"
  value       = { for k, v in aws_ecr_lifecycle_policy.ecr_lifecycle_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecr_lifecycle_policies_registry_id" {
  description = "Map of registry_id values across all ecr_lifecycle_policies, keyed the same as var.ecr_lifecycle_policies"
  value       = { for k, v in aws_ecr_lifecycle_policy.ecr_lifecycle_policies : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}
output "ecr_lifecycle_policies_repository" {
  description = "Map of repository values across all ecr_lifecycle_policies, keyed the same as var.ecr_lifecycle_policies"
  value       = { for k, v in aws_ecr_lifecycle_policy.ecr_lifecycle_policies : k => v.repository if v.repository != null && length(v.repository) > 0 }
}

