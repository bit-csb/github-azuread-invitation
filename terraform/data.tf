data "azuread_domains" "aad_domains" {
  admin_managed = true
  only_initial  = true
}

data "azuread_users" "users" {
  user_principal_names = local.upn_set
  ignore_missing       = true
}
