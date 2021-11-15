terraform {
    backend "gcs" {
        bucket = "terraform-state-mdm-prod-grp"
        prefix = "asia-northeast3/prd/mdm-prd/mdm-service-monitoring"
    }
}
