#-------------------------------#
#   ENVIRONMENT SPECIFICATION   #
#-------------------------------#

output "instance_name_without_version" {
  value = var.instance_name_without_version
}

output "db_name" {
  value = var.db_name
}

output "region" {
  value = var.region
}

output "is_production" {
  value = var.is_production
}

output "read_replica" {
  value = var.read_replica
}

output "high_available" {
  value = var.high_available
}

output "tribe" {
  value = var.tribe
}

output "responsible_people" {
  value = var.responsible_people
}

output "communication_slack_channel" {
  value = var.communication_slack_channel
}

output "alert_slack_channel" {
  value = var.alert_slack_channel
}

output "repository" {
  value = var.repository
}

#----------------------------#
#   INSTANCE SPECIFICATION   #
#----------------------------#

output "engine_version" {
  value = var.engine_version
}

output "instance_class" {
  value = var.instance_class
}

output "read_replica_instance_class" {
  value = var.read_replica_instance_class
}

output "allocated_storage" {
  value = var.allocated_storage
}

output "disk_autoresize" {
  value = var.disk_autoresize
}

output "backup_time" {
  value = var.backup_time
}

output "maintenance_window_hour" {
  value = var.maintenance_window_hour
}

output "maintenance_window_day" {
  value = var.maintenance_window_day
}

output "maintenance_update_track" {
  value = var.maintenance_update_track
}

#-----------------------#
#   DNS SPECIFICATION   #
#-----------------------#

#-------------------------#
#   VAULT SPECIFICATION   #
#-------------------------#

output "master_username" {
  value = var.vault_master_username
}

output "master_password" {
  value = random_string.master_user_password.result
}

#----------------------------------#
#   SECURITY GROUP SPECIFICATION   #
#----------------------------------#

output "sg_default_allowed_ips" {
  value = var.sg_default_allowed_ips
}

output "sg_custom_allowed_ips" {
  value = var.sg_custom_allowed_ips
}
