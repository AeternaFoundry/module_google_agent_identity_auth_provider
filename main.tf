resource "google_agent_identity_auth_provider" "agent_identity_auth_providers" {
  for_each = var.agent_identity_auth_providers

  auth_provider_id = each.value.auth_provider_id
  location         = each.value.location
  allowed_scopes   = each.value.allowed_scopes
  blocked_scopes   = each.value.blocked_scopes
  deletion_policy  = each.value.deletion_policy
  description      = each.value.description
  labels           = each.value.labels
  project          = each.value.project
  workload_ids     = each.value.workload_ids

  auth_provider_type_params {
    dynamic "api_key" {
      for_each = each.value.auth_provider_type_params.api_key != null ? [each.value.auth_provider_type_params.api_key] : []
      content {
        api_key = api_key.value.api_key
      }
    }
    dynamic "three_legged_oauth" {
      for_each = each.value.auth_provider_type_params.three_legged_oauth != null ? [each.value.auth_provider_type_params.three_legged_oauth] : []
      content {
        authorization_url        = three_legged_oauth.value.authorization_url
        client_id                = three_legged_oauth.value.client_id
        client_secret            = three_legged_oauth.value.client_secret
        client_secret_wo         = three_legged_oauth.value.client_secret_wo
        client_secret_wo_version = three_legged_oauth.value.client_secret_wo_version
        default_continue_uri     = three_legged_oauth.value.default_continue_uri
        enable_pkce              = three_legged_oauth.value.enable_pkce
        token_url                = three_legged_oauth.value.token_url
      }
    }
    dynamic "two_legged_oauth" {
      for_each = each.value.auth_provider_type_params.two_legged_oauth != null ? [each.value.auth_provider_type_params.two_legged_oauth] : []
      content {
        client_id                = two_legged_oauth.value.client_id
        client_secret            = two_legged_oauth.value.client_secret
        client_secret_wo         = two_legged_oauth.value.client_secret_wo
        client_secret_wo_version = two_legged_oauth.value.client_secret_wo_version
        token_url                = two_legged_oauth.value.token_url
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

