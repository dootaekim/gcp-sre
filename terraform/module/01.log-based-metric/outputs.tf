output "dist_name" {
    value = google_logging_metric.logging_metric_dist.name
}

output "counter_name" {
    value = google_logging_metric.logging_metric_counter.name
}