resource "google_logging_metric" "logging_metric_dist" {
  name = var.metric_name_dist
  filter = var.log_filter
  metric_descriptor {
    metric_kind = "DELTA"
    value_type = "DISTRIBUTION"
    unit    = "1"
    labels {
      key    = "response_code"
      value_type = "STRING"
      description = "response code sent to client"
    }
    display_name = var.metric_display_name_dist
  }
  value_extractor = "REGEXP_EXTRACT(textPayload, \"HTTP/1.1\\\" [0-9]+ [0-9]+ ([0-9]+)\")"
  label_extractors = {
    "response_code" = "REGEXP_EXTRACT(textPayload, \"HTTP/1.1\\\" ([0-9]+)\")"
  }
  bucket_options {
    linear_buckets {
      num_finite_buckets = 3
      width              = 1
      offset             = 1
    }
  }
}

resource "google_logging_metric" "logging_metric_counter" {
  name   = var.metric_name_counter
  filter = var.log_filter
  metric_descriptor {
    metric_kind = "DELTA"
    value_type  = "INT64"
    unit        = "1"
    labels {
      key         = "response_code"
      value_type  = "STRING"
      description = "response code sent to client"
    }
    display_name = var.metric_display_name_counter
  }
  label_extractors = {
    "response_code" = "REGEXP_EXTRACT(textPayload, \"HTTP/1.1\\\" ([0-9]+)\")"
  }
}

