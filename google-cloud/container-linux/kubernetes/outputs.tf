# Deprecated
output "controllers_ipv4_public" {
  value = ["${google_compute_instance.controllers.*.network_interface.0.access_config.0.assigned_nat_ip}"]
}

# Outputs for Kubernetes Ingress

output "ingress_static_ipv4" {
  description = "Global IPv4 address for proxy load balancing to the nearest Ingress controller"
  value = "${google_compute_global_address.ingress-ipv4.address}"
}

# Deprecated, use ingress_static_ipv4
output "ingress_static_ip" {
  description = "Global IPv4 address for proxy load balancing to the nearest Ingress controller"
  value = "${google_compute_global_address.ingress-ipv4.address}"
}

# Outputs for worker pools

output "network_name" {
  value = "${google_compute_network.network.name}"
}

output "kubeconfig" {
  value = "${module.bootkube.kubeconfig}"
}

# Outputs for custom firewalling

output "network_self_link" {
  value = "${google_compute_network.network.self_link}"
}

# Outputs for custom load balancing

output "worker_instance_group" {
  description = "Full URL of the worker managed instance group"
  value = "${module.workers.instance_group}"
}
