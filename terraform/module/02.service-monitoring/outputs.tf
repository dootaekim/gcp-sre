output "dist_service_name" {
    value = google_monitoring_custom_service.mdm-was-distribution.name
}

output "counter_service_name" {
    value = google_monitoring_custom_service.mdm-was-counter.name
}

output "dist_slo_name" {
    value = google_monitoring_slo.request_based_slo_dist.name
}

output "counter_slo_name" {
    value = google_monitoring_slo.request_based_slo_counter.name
}

output "dist_service_id" {
    value = google_monitoring_custom_service.mdm-was-distribution.id
}

output "counter_service_id" {
    value = google_monitoring_custom_service.mdm-was-counter.id
}

output "dist_slo_id" {
    value = google_monitoring_slo.request_based_slo_dist.id
}

output "counter_slo_id" {
    value = google_monitoring_slo.request_based_slo_counter.id
}