## -----------
## alert-policy vars
## -----------
variable "custom_services_service_name" {
  type = string
}

variable "custome_services_slo" {
  type = string
}

variable "custom_services_burn_rate" {
  type = string
  description = <<EOF
  "The threshhold is determined by how quickly we burn through our error budget.
  Example: if threshold_value = 2 then error budget is consumed in 15 days."
  EOF
}

variable "error_duration" {
  type = string
  default = "60s"
}

variable "type" {
  type = string
  description = "Latecny or Availability"
#   validation on can be used in the later version than Terraform CLI v0.13.0.
#   validation {
#     condition     = var.type != "Latency" || var.type != "Availability"
#     error_message = "The type must be Latency or Availability"
#   }
}

