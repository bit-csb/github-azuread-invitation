locals {
    upn_set = toset([for key, value in {
        for user in local.users : user => regex("(?P<localPart>^[^@]+)@(?P<domain>.+$)", user)
    } :
    lower(value.domain) != local.default_domain ? "${lower(value.localPart)}_${lower(value.domain)}#EXT#@${local.default_domain}" : key])
}

locals {
    existing_users = [for user in data.azuread_users.users.users : user.mail != "" ? user.mail : user.user_principal_name]
}

locals {
    invited_users = setsubtract(local.users, local.existing_users)
}

