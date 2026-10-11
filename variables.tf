variable "agent_identity_auth_providers" {
  description = <<EOT
Map of agent_identity_auth_providers, attributes below
Required:
    - auth_provider_id
    - location
    - auth_provider_type_params (block):
        - api_key (optional, block):
            - api_key (optional)
        - three_legged_oauth (optional, block):
            - authorization_url (optional)
            - client_id (optional)
            - client_secret (optional)
            - client_secret_wo (optional)
            - client_secret_wo_version (optional)
            - default_continue_uri (optional)
            - enable_pkce (optional)
            - token_url (optional)
        - two_legged_oauth (optional, block):
            - client_id (optional)
            - client_secret (optional)
            - client_secret_wo (optional)
            - client_secret_wo_version (optional)
            - token_url (optional)
Optional:
    - allowed_scopes
    - blocked_scopes
    - deletion_policy
    - description
    - labels
    - project
    - workload_ids
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    auth_provider_id = string
    location         = string
    allowed_scopes   = optional(list(string))
    blocked_scopes   = optional(list(string))
    deletion_policy  = optional(string)
    description      = optional(string)
    labels           = optional(map(string))
    project          = optional(string)
    workload_ids     = optional(list(string))
    auth_provider_type_params = object({
      api_key = optional(object({
        api_key = optional(string)
      }))
      three_legged_oauth = optional(object({
        authorization_url        = optional(string)
        client_id                = optional(string)
        client_secret            = optional(string)
        client_secret_wo         = optional(string)
        client_secret_wo_version = optional(string)
        default_continue_uri     = optional(string)
        enable_pkce              = optional(bool)
        token_url                = optional(string)
      }))
      two_legged_oauth = optional(object({
        client_id                = optional(string)
        client_secret            = optional(string)
        client_secret_wo         = optional(string)
        client_secret_wo_version = optional(string)
        token_url                = optional(string)
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

