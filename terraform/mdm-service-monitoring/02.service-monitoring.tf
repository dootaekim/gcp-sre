resource "google_monitoring_custom_service" "mdm-prd-grp-was" {
  service_id = "mdm-prd-grp-was-srv"
  display_name = "mdm-prd-grp-was-srv"

  telemetry {
      resource_name = "//logging.googleapis.com/user/${google_logging_metric.logging_metric.name}"
  }
}