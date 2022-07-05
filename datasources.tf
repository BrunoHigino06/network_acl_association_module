data "aws_subnet" "subnet_name" {
    count = length(var.subnet_name_association)
    filter {
        name   = "tag:Name"
        values = [var.subnet_name_association[count.index]]
    }
}

data "aws_network_acls" "networkAcl_name" {
    count = length(var.networkAcl_name_association)
    filter {
        name   = "tag:Name"
        values = [var.networkAcl_name_association[count.index]]
    }
}