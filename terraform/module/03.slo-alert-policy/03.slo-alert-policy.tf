resource "google_monitoring_alert_policy" "custom_service_slo_alert" {
  display_name = "${var.custom_services_service_name} ${var.type} Alert Policy"
  combiner     = "AND"
  conditions {
    display_name = "SLO burn rate alert for ${var.type} SLO with a threshold of ${var.custom_services_service_name}"
    condition_threshold {
      filter          = var.custome_services_slo
      threshold_value = var.custom_services_burn_rate
      comparison      = "COMPARISON_GT"
      duration        = var.error_duration
    }
  }
  documentation {
    content   = "${var.type} SLO burn for the ${var.custom_services_service_name} for the past 60m exceeded ${var.custom_services_burn_rate}x the acceptable budget burn rate. The service is responding slower than desired. Consider viewing the service logs or custom dashboard to retrieve more information or adjust the values for the SLO and error budget."
    mime_type = "text/markdown"
  }
}
