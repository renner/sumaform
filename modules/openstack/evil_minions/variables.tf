variable "base_configuration" {
  description = "use ${module.base.configuration}, see the main.tf example file"
  type = "map"
}

variable "name" {
  description = "hostname, without the domain part"
  type = "string"
}

variable "server_configuration" {
  description = "use ${module.<SERVER_NAME>.configuration}, see the main.tf example file"
  type = "map"
}

variable "evil_minion_count"  {
  description = "number of minions that will be spawned by evil-minions"
  default = 200
}

variable "dump_file" {
  description = "path to a minion dump file"
  type = "string"
  default = "salt/evil_minions/minion-dump.mp"
}

variable "slowdown_factor"  {
  description = "slowdown factor for evil-minions"
  default = 0
}

variable "count"  {
  description = "number of hosts like this one"
  default = 1
}

variable "ssh_key_path" {
  description = "path of additional pub ssh key you want to use to access VMs, see README_ADVANCED.md"
  default = "/dev/null"
  # HACK: "" cannot be used as a default because of https://github.com/hashicorp/hil/issues/50
}

// Provider-specific variables

variable "flavor" {
  description = "OpenStack flavor"
  default = "m1.small"
}

variable "floating_ips" {
  description = "List of floating IP IDs to associate"
  default = []
}
