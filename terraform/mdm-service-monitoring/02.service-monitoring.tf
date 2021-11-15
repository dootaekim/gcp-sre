resource "google_monitoring_custom_service" "mdm-prd-grp-was" {
  service_id = "mdm-prd-grp-was-srv"
  display_name = "mdm-prd-grp-was-srv"

  telemetry {
      resource_name = "//logging.googleapis.com/user/${google_logging_metric.logging_metric.name}"
  }
}

resource "google_monitoring_custom_service" "mdm-prd-grp-was-counter" {
  service_id = "mdm-prd-grp-was-srv-counter"
  display_name = "mdm-prd-grp-was-srv-counter"

  telemetry {
      resource_name = "//logging.googleapis.com/user/${google_logging_metric.logging_metric_counter.name}"
  }
}

# resource "google_monitoring_slo" "request_based_slo" {
#   service = google_monitoring_custom_service.mdm-prd-grp-was.service_id
# }

resource "google_monitoring_slo" "request_based_slo_counter" {
  service = google_monitoring_custom_service.mdm-prd-grp-was-counter.service_id
  slo_id = "was-slo-counter"
  display_name = "Good Bad Metrics"

  goal = 0.9
  rolling_period_days = 28
  request_based_sli {
    good_total_ratio {
        good_service_filter = join(" AND ", [
        "metric.type=\"logging.googleapis.com/user/Fowler_POST_metric_counter\"",
        "metric.label.\"response_code\"!=404",
        "resource.type=\"k8s_container\"",
      ])
      total_service_filter = join(" AND ", [
        "metric.type=\"logging.googleapis.com/user/Fowler_POST_metric_counter\"",
        "resource.type=\"k8s_container\"",
      ])
    }
  }
}