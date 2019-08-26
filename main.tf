#-------------------------------#
#   ENVIRONMENT SPECIFICATION   #
#-------------------------------#

#----------------------------#
#   INSTANCE SPECIFICATION   #
#----------------------------#

#-----------------------#
#   DNS SPECIFICATION   #
#-----------------------#

#-------------------------#
#   VAULT SPECIFICATION   #
#-------------------------#

resource "random_string" "master_user_password" {
  length  = 20
  special = false
}

resource "random_string" "datadog_user_password" {
  length  = 20
  special = false
}

resource "vault_generic_secret" "master_user_vault_secret" {
  path = "${var.vault_project_secret_path}/sql/${var.instance_name_without_version}/master"

  data_json = <<EOT
{
  "username": "${var.vault_master_username}",
  "password": "${random_string.master_user_password.result}"
}
EOT
}

resource "vault_generic_secret" "datadog_user_vault_secret" {
  path = "${var.vault_project_secret_path}/sql/${var.instance_name_without_version}/datadog"

  data_json = <<EOT
{
  "username": "datadog",
  "password": "${random_string.datadog_user_password.result}"
}
EOT
}

#----------------------------------#
#   SECURITY GROUP SPECIFICATION   #
#----------------------------------#
