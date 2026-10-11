output "agent_identity_auth_providers_id" {
  description = "Map of id values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no id are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_identity_auth_providers_allowed_scopes" {
  description = "Map of allowed_scopes values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no allowed_scopes are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.allowed_scopes if v.allowed_scopes != null && length(v.allowed_scopes) > 0 }
}
output "agent_identity_auth_providers_auth_provider_id" {
  description = "Map of auth_provider_id values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no auth_provider_id are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.auth_provider_id if v.auth_provider_id != null && length(v.auth_provider_id) > 0 }
}
output "agent_identity_auth_providers_auth_provider_type_params" {
  description = "Map of auth_provider_type_params values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no auth_provider_type_params are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => one(v.auth_provider_type_params) if v.auth_provider_type_params != null && length(v.auth_provider_type_params) > 0 }
  sensitive   = true
}
output "agent_identity_auth_providers_blocked_scopes" {
  description = "Map of blocked_scopes values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no blocked_scopes are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.blocked_scopes if v.blocked_scopes != null && length(v.blocked_scopes) > 0 }
}
output "agent_identity_auth_providers_create_time" {
  description = "Map of create_time values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no create_time are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "agent_identity_auth_providers_deleted" {
  description = "Map of deleted values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no deleted are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.deleted if v.deleted != null }
}
output "agent_identity_auth_providers_deletion_policy" {
  description = "Map of deletion_policy values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no deletion_policy are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "agent_identity_auth_providers_description" {
  description = "Map of description values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no description are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "agent_identity_auth_providers_effective_labels" {
  description = "Map of effective_labels values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no effective_labels are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "agent_identity_auth_providers_expire_time" {
  description = "Map of expire_time values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no expire_time are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "agent_identity_auth_providers_labels" {
  description = "Map of labels values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no labels are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "agent_identity_auth_providers_location" {
  description = "Map of location values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no location are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.location if v.location != null && length(v.location) > 0 }
}
output "agent_identity_auth_providers_name" {
  description = "Map of name values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no name are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_identity_auth_providers_project" {
  description = "Map of project values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no project are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.project if v.project != null && length(v.project) > 0 }
}
output "agent_identity_auth_providers_state" {
  description = "Map of state values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no state are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.state if v.state != null && length(v.state) > 0 }
}
output "agent_identity_auth_providers_terraform_labels" {
  description = "Map of terraform_labels values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no terraform_labels are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "agent_identity_auth_providers_update_time" {
  description = "Map of update_time values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no update_time are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "agent_identity_auth_providers_workload_ids" {
  description = "Map of workload_ids values across all agent_identity_auth_providers, keyed the same as var.agent_identity_auth_providers except keys with no workload_ids are omitted"
  value       = { for k, v in google_agent_identity_auth_provider.agent_identity_auth_providers : k => v.workload_ids if v.workload_ids != null && length(v.workload_ids) > 0 }
}

