resource "google_logging_metric" "logging_metric" {
  name = "Fowler_POST_metric"
  filter = var.log_filter
  metric_descriptor {
    metric_kind = "DELTA"
    value_type = "DISTRIBUTION"
    unit    = "1"
    labels {
      key    = "response_code"
      value_type = "INT64"
      description = "response code sent to client"
    }
    display_name = "Fowler_POST_metric"
  }
  value_extractor = "REGEXP_EXTRACT(textPayload, \"HTTP/1\\.1\\\" [0-9]{3} ([0-9]+)\")"
  label_extractors = {
    "response_code" = "REGEXP_EXTRACT(textPayload, \"HTTP/1\\.1\\\" ([0-9]{3}) [0-9]+\")"
  }
  bucket_options {
    linear_buckets {
      num_finite_buckets = 3
      width              = 1
      offset             = 1
    }
  }
}

output "post_metric" {
  value = google_logging_metric.logging_metric.name
}

resource "google_logging_metric" "logging_metric_counter" {
  name   = var.metric_name
  filter = var.log_filter
  metric_descriptor {
    metric_kind = "DELTA"
    value_type  = "INT64"
    unit        = "1"
    labels {
      key         = "response_code"
      value_type  = "INT64"
      description = var.label_description
    }
    display_name = var.display_name
  }
  label_extractors = {
    "response_code" = "REGEXP_EXTRACT(textPayload, \"HTTP/1.1\\\" ([0-9]+)\")"
  }
}


# resource "google_logging_metric" "logging_metric" {
#   name = "my-request-metric"
#   filter = "resource.type=gae_app AND severity>=ERROR"
#   metric_descriptor {
#     metric_kind = "DELTA"
#     value_type = "DISTRIBUTION"
#     unit    = "1"
#     labels {
#       key    = "response_code"
#       value_type = "INT64"
#       description = "response code sent to client"
#     }
#     display_name = "My metric"
#   }
#   value_extractor = "REGEXP_EXTRACT(textPayload.message, HTTP\/1.1\" \d[0-9]{2} (\d[0-9]+))"
#   label_extractors = {
#     "response_code" = "REGEXP_EXTRACT(textPayload.message, HTTP\/1.1\" (\d[0-9]{2}) \d[0-9]+)"
#   }
# }