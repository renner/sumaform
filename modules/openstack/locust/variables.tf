variable "base_configuration" {
  description = "use ${module.base.configuration}, see the main.tf example file"
  type = "map"
}

variable "server_configuration" {
  description = "use ${module.<SERVER_NAME>.configuration}, see the main.tf example file"
  type = "map"
}

variable "name" {
  description = "hostname, without the domain part"
  default = "locust"
}

variable "ssh_key_path" {
  description = "path of additional pub ssh key you want to use to access VMs, see README_ADVANCED.md"
  default = "/dev/null"
  # HACK: "" cannot be used as a default because of https://github.com/hashicorp/hil/issues/50
}

variable "locust_file" {
  description = "path to a locustfile.py"
  type = "string"
  default = "salt/locust/locustfile.py"
}

variable "slave_count" {
  description = "number of Locust slaves, set to 0 to disable master-slave mode"
  default = 0
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
