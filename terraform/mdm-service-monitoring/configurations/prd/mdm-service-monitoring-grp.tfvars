## -----------
## common vars
## -----------
zone    =   "asia-northeast3-1"
gcs_folder_stage  =   "mdm-service-monitoring"
gcs_tfstate_file    =   "mdm-service-monitoring-prd-grp"

## -----------
## log-based-metric vars
## -----------
log_filter = <<-EOF
resource.type="k8s_container"
resource.labels.project_id="mdm-prod-grp"
resource.labels.location="asia-northeast3"
resource.labels.cluster_name="mdm-cluster-prd-grp"
resource.labels.namespace_name="mdm-app-prd-grp"
labels.k8s-pod/name="mdm-prd-grp-was"
textPayload : "POST"
EOF
metric_name = "Fowler_POST_metric_counter"
label_description = "response code sent to client"
display_name = "Fowler_POST_metric_counter"
