resource "aws_network_acl_association" "network_acl" {
    count = length(var.network_acl_association.networkAcl_id)
    network_acl_id = var.network_acl_association.networkAcl_id
    subnet_id      = var.network_acl_association.subnet_id
}