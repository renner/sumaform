variable "openstack_tenant_name" {
  description = "set this variable or export OS_TENANT_NAME"
  #default = "openstack"
}

variable "openstack_auth_url" {
  description = "set this variable or export OS_AUTH_URL"
  #default = "***REMOVED***.0"
}

variable "avahi-domain" {
  default = "vagrant.local"
}

variable "package-mirror" {
  default = "null"
}

variable "server" {
  default = "null"
}
