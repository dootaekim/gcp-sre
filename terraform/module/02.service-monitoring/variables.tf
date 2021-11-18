## -----------
## service-monitoring vars
## -----------
######### FOR DISTRIBUTED ##########
variable "service_id_dist" {
  type = string
}
variable "logging_metric_name_dist" {
  type = string
}
variable "goal_dist" {
  type = number
}
variable "range_max" {
  type = number
}
variable "slo_id_dist" {
  type = string
}
variable "slo_displayname_dist" {
  type = string
  description = "Example : {targetpercent}-{Distribution_Cut}-{Rolling_28_Days|Calendar_Week}"
}
variable "slo_logging_metric_name_dist" {
  type = string
}

######### FOR COUNTER ##########
variable "service_id_counter" {
  type = string
}
variable "logging_metric_name_counter" {
  type = string
}
variable "goal_counter" {
  type = number
}
variable "slo_id_counter" {
  type = string
}
variable "slo_displayname_counter" {
  type = string
  description = "Example : {targetpercent}-{Good/Total_Ratio}-{Rolling_28_Days|Calendar_Week}"
}
variable "slo_logging_metric_name_counter" {
  type = string
}