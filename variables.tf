#-------------------------------#
#   ENVIRONMENT SPECIFICATION   #
#-------------------------------#
variable "skypicker_zone_id" {
  description = "Zone ID of Route53 zone"
}

variable "instance_name_without_version" {
  type    = string
  default = ""
}

variable "db_name" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = ""
}

variable "is_production" {
  type    = string
  default = ""
}

variable "tribe" {
  type    = string
  default = ""
}

variable "read_replica" {
  type    = string
  default = ""
}

variable "high_available" {
  type    = string
  default = ""
}

variable "responsible_people" {
  type    = string
  default = ""
}

variable "communication_slack_channel" {
  type    = string
  default = ""
}

variable "alert_slack_channel" {
  type    = string
  default = ""
}

variable "repository" {
  type    = string
  default = ""
}

#----------------------------#
#   INSTANCE SPECIFICATION   #
#----------------------------#

variable "engine_names" {
  type        = map(string)
  description = "Map of engine names"

  default = {
    # MySQL
    "MYSQL_5_7"   = "mysql"
    # PostgreSQL
    "POSTGRES_11" = "pg"
  }
}

variable "engine_version" {
  type    = string
  default = ""
}

variable "instance_class" {
  type    = string
  default = ""
}

variable "read_replica_instance_class" {
  default = "db-n1-standard-1"
}

variable "allocated_storage" {
  type    = string
  default = ""
}

variable "disk_autoresize" {
  default = "0"
}

variable "backup_time" {
  default = "22:00"
}

variable "maintenance_window_day" {
  default = "2"
}

variable "maintenance_window_hour" {
  default = "3"
}

variable "maintenance_update_track" {
  default = "stable"
}

#-----------------------#
#   DNS SPECIFICATION   #
#-----------------------#

variable "dns_ttl" {
  type    = string
  default = ""
}

variable "dns_address" {
  type    = string
  default = ""
}

variable "read_replica_dns_address" {
  default = ""
}

variable "dns_postfix" {
  default = "skypicker.com"
}

#-------------------------#
#   VAULT SPECIFICATION   #
#-------------------------#

variable "vault_project_secret_path" {
  type    = string
  default = ""
}

variable "vault_master_username" {
}

#----------------------------------#
#   SECURITY GROUP SPECIFICATION   #
#----------------------------------#

variable "sg_default_allowed_ips" {
  type        = list(map(string))
  description = "List of default whitelisted IPs"
}

variable "sg_custom_allowed_ips" {
  type        = list(map(string))
  description = "List of custom whitelisted IPs"
}
