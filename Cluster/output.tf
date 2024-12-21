output "cluster_id" {
  value = aws_eks_cluster.salmanfarsi.id
}

output "node_group_id" {
  value = aws_eks_node_group.salmanfarsi.id
}

output "vpc_id" {
  value = aws_vpc.salmanfarsi_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.salmanfarsi_subnet[*].id
}


