resource "aws_network_acl_association" "network_acl" {
    count = length(var.network_acl_association.subnet_name)
    network_acl_id = data.aws_network_acls.networkAcl_name[count.index].id
    subnet_id      = data.aws_subnet.subnet_name[count.index].id
}