resource "google_monitoring_custom_service" "mdm-was-distribution" {
  service_id = var.service_id_dist
  display_name = var.service_id_dist

  telemetry {
      resource_name = var.logging_metric_name_dist
  }
}

resource "google_monitoring_custom_service" "mdm-was-counter" {
  service_id = var.service_id_counter
  display_name = var.service_id_counter

  telemetry {
      resource_name = var.logging_metric_name_counter
  }
}

resource "google_monitoring_slo" "request_based_slo_dist" {
  service = google_monitoring_custom_service.mdm-was-distribution.service_id
  slo_id = var.slo_id_dist
  display_name = var.slo_displayname_dist

  goal = var.goal_dist
  rolling_period_days = 28

  windows_based_sli {
    window_period = "300s"
    good_total_ratio_threshold {
      threshold = 0.9
      performance {
        distribution_cut {
          distribution_filter = join(" AND ", [
            "metric.type=\"${var.slo_logging_metric_name_dist}\"",
            "resource.type=\"k8s_container\"",
            "metric.labels.response_code<400",
          ])
          range {
            max = var.range_max
          }
        }
      }
    }
  }
}

resource "google_monitoring_slo" "request_based_slo_counter" {
  service = google_monitoring_custom_service.mdm-was-counter.service_id
  slo_id = var.slo_id_counter
  display_name = var.slo_displayname_counter

  goal = var.goal_counter
  rolling_period_days = 28

   windows_based_sli {
    window_period = "300s"
    good_total_ratio_threshold {
      threshold = 0.9
      performance {
        good_total_ratio {
          good_service_filter = join(" AND ", [
          "metric.type=\"${var.slo_logging_metric_name_counter}\"",
          "resource.type=\"k8s_container\"",
          "metric.label.response_code<400",
          # "metric.label.response_code!=monitoring.regex.full_match(\"([4|5][0-9]+)\")",
        ])
          total_service_filter = join(" AND ", [
          "metric.type=\"${var.slo_logging_metric_name_counter}\"",
          "resource.type=\"k8s_container\"",
        ])
        }
      }
    }
  }
}