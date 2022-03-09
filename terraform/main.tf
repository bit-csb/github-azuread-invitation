resource "azuread_invitation" "owner_invitation" {
  for_each = local.invited_users

  user_email_address = each.key
  redirect_url       = local.redirect_url
  user_type          = local.user_type
  message {
    body = local.message_body
  }
}
