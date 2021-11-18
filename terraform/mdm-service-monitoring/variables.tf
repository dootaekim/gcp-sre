## ---------------------
## Provider configuration
## ---------------------
variable "project_id" {
  description = "Project ID in GCP"
}
variable "region" {
  description = "Region in which to manage GCP resources"
}
variable "zone" {
  description = "zone in which to manage GCP resources"
}
variable "environment" {
    type = string
}
variable "gcs_bucket" {
    type = string
}
variable "gcs_folder_project" {
    type = string
}
variable "gcs_tfstate_file" {
    type = string
}
variable "gcs_folder_stage" {
    type = string
}

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ1-SLI1==1-1
# variable "log_filter_1-1" {
#   type = string
# }
# variable "metric_name_dist_1-1" {
#   type = string
# }
# variable "display_name_dist_1-1" {
#   type = string
# }
# variable "metric_name_counter_1-1" {
#   type = string
# }
# variable "display_name_counter_1-1" {
#   type = string
# }

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ1-SLI2==1-2
# variable "log_filter_1-2" {
#   type = string
# }
# variable "metric_name_dist_1-2" {
#   type = string
# }
# variable "display_name_dist_1-2" {
#   type = string
# }
# variable "metric_name_counter_1-2" {
#   type = string
# }
# variable "display_name_counter_1-2" {
#   type = string
# }

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ1-SLI3==1-3
# variable "log_filter_1-3" {
#   type = string
# }
# variable "metric_name_dist_1-3" {
#   type = string
# }
# variable "display_name_dist_1-3" {
#   type = string
# }
# variable "metric_name_counter_1-3" {
#   type = string
# }
# variable "display_name_counter_1-3" {
#   type = string
# }

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ2-SLI1==1-1
# variable "log_filter_2-1" {
#   type = string
# }
# variable "metric_name_dist_2-1" {
#   type = string
# }
# variable "display_name_dist_2-1" {
#   type = string
# }
# variable "metric_name_counter_2-1" {
#   type = string
# }
# variable "display_name_counter_2-1" {
#   type = string
# }

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ2-SLI2==2-2
# variable "log_filter_2-2" {
#   type = string
# }
# variable "metric_name_dist_2-2" {
#   type = string
# }
# variable "display_name_dist_2-2" {
#   type = string
# }
# variable "metric_name_counter_2-2" {
#   type = string
# }
# variable "display_name_counter_2-2" {
#   type = string
# }

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ2-SLI3==2-3
# variable "log_filter_2-3" {
#   type = string
# }
# variable "metric_name_dist_2-3" {
#   type = string
# }
# variable "display_name_dist_2-3" {
#   type = string
# }
# variable "metric_name_counter_2-3" {
#   type = string
# }
# variable "display_name_counter_2-3" {
#   type = string
# }

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ3-SLI1==3-1
# variable "log_filter_3-1" {
#   type = string
# }
# variable "metric_name_dist_3-1" {
#   type = string
# }
# variable "display_name_dist_3-1" {
#   type = string
# }
# variable "metric_name_counter_3-1" {
#   type = string
# }
# variable "display_name_counter_3-1" {
#   type = string
# }

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ3-SLI2==3-2
# variable "log_filter_3-2" {
#   type = string
# }
# variable "metric_name_dist_3-2" {
#   type = string
# }
# variable "display_name_dist_3-2" {
#   type = string
# }
# variable "metric_name_counter_3-2" {
#   type = string
# }
# variable "display_name_counter_3-2" {
#   type = string
# }

# ## -----------
# ## log-based-metric vars
# ## -----------
# ## CUJ3-SLI3==3-3
# variable "log_filter_3-3" {
#   type = string
# }
# variable "metric_name_dist_3-3" {
#   type = string
# }
# variable "display_name_dist_3-3" {
#   type = string
# }
# variable "metric_name_counter_3-3" {
#   type = string
# }
# variable "display_name_counter_3-3" {
#   type = string
# }

