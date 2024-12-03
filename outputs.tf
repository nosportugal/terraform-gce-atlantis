output "ip_address" {
  value       = google_compute_global_address.default.address
  description = "The IPv4 address of the load balancer"
}

output "cos_image_id" {
  value       = var.machine_image == null ? data.google_compute_image.cos[0].image_id : element(split("/", var.machine_image), length(split("/", var.machine_image)) - 1)
  description = "The unique identifier of the Container-Optimized OS image used to create the Compute Engine instance."
}

output "managed_ssl_certificate_certificate_id" {
  value       = google_compute_managed_ssl_certificate.default.certificate_id
  description = "The unique identifier of the Google Managed SSL certificate"
}

output "managed_ssl_certificate_expire_time" {
  value       = google_compute_managed_ssl_certificate.default.expire_time
  description = "Expire time of the Google Managed SSL certificate"
}

output "iap_backend_service_name" {
  value       = var.iap != null ? google_compute_backend_service.iap[0].name : null
  description = "Name of the optional IAP-enabled backend service"
}
