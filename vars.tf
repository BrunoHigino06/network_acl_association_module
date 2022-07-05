variable "network_acl_association" {
 type = map(any)
  default = {
    subnet_id  = ""
    networkAcl_id = ""
  }
}