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

## -----------
## log-based-metric vars
## -----------
variable "log_filter" {
  type = string
}
variable "metric_name" {
  type = string
}
variable "label_description" {
  type = string
}
variable "display_name" {
  type = string
}
