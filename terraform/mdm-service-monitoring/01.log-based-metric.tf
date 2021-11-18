# CUJ1-SLI1 : Availability of the approval to register new BP
module "CUJ1-SLI1" {
    source = "../module/01.log-based-metric"
    metric_name_dist = "SRE-approval-to-register-new-bp-dist"
    metric_display_name_dist = "1-1-approval-to-register-new-bp-dist"
    metric_name_counter = "SRE-approval-to-register-new-bp-counter"
    metric_display_name_counter = "1-1-approval-to-register-new-bp-counter"
    log_filter =<<-EOF
    resource.type="k8s_container"
    resource.labels.project_id="mdm-prod-grp"
    resource.labels.location="asia-northeast3"
    resource.labels.cluster_name="mdm-cluster-prd-grp"
    resource.labels.namespace_name="mdm-app-prd-grp"
    labels.k8s-pod/name="mdm-prd-grp-was"
    textPayload : "POST /adm/mng/mng_wfprocess.jsp"
    EOF
}

# CUJ1-SLI2 : Availability of the Check Exists countryCode/TaxId in Group MDM

module "CUJ1-SLI2" {
    source = "../module/01.log-based-metric"
    metric_name_dist = "SRE-check-exists-countrycode-taxid-in-group-mdm-dist"
    metric_display_name_dist = "1-2-check-exists-countrycode-taxid-in-group-mdm-dist"
    metric_name_counter = "SRE-check-exists-countrycode-taxid-in-group-mdm-counter"
    metric_display_name_counter = "1-2-check-exists-countrycode-taxid-in-group-mdm-counter"
    log_filter =<<-EOF
    resource.type="k8s_container"
    resource.labels.project_id="mdm-prod-grp"
    resource.labels.location="asia-northeast3"
    resource.labels.cluster_name="mdm-cluster-prd-grp"
    resource.labels.namespace_name="mdm-app-prd-grp"
    labels.k8s-pod/name="mdm-prd-grp-was"
    textPayload =~ "POST /tbwapi/group/bp/get/(([a-z,A-Z,0-9]+))/(([a-z,A-Z,0-9]+))"
    EOF
}

# CUJ2-SLI1 : Availability of getting BP common info from Group MDM 
module "CUJ2-SLI1" {
    source = "../module/01.log-based-metric"
    metric_name_dist = "SRE-getting-bp-common-info-from-group-mdm-dist"
    metric_display_name_dist = "2-1-getting-bp-common-info-from-group-mdm-dist"
    metric_name_counter = "SRE-getting-bp-common-info-from-group-mdm-counter"
    metric_display_name_counter = "2-1-getting-bp-common-info-from-group-mdm-counter"
    log_filter =<<-EOF
    resource.type="k8s_container"
    resource.labels.project_id="mdm-prod-grp"
    resource.labels.location="asia-northeast3"
    resource.labels.cluster_name="mdm-cluster-prd-grp"
    resource.labels.namespace_name="mdm-app-prd-grp"
    labels.k8s-pod/name="mdm-prd-grp-was"
    textPayload =~ "POST /tbwapi/group/bp/get/(([a-z,A-Z,0-9]+))"
    EOF
}

# CUJ2-SLI2 : Availability of the requisition to validate entered BP common & subsidiary specific data 

module "CUJ2-SLI2" {
    source = "../module/01.log-based-metric"
    metric_name_dist = "SRE-requisition-to-validate-entered-bp-common-and-subsidiary-specific-data-dist"
    metric_display_name_dist = "2-2-requisition-to-validate-entered-bp-common-and-subsidiary-specific-data-dist"
    metric_name_counter = "SRE-requisition-to-validate-entered-bp-common-and-subsidiary-specific-data-counter"
    metric_display_name_counter = "2-2-requisition-to-validate-entered-bp-common-and-subsidiary-specific-data-counter"
    log_filter =<<-EOF
    resource.type="k8s_container"
    resource.labels.project_id="mdm-prod-grp"
    resource.labels.location="asia-northeast3"
    resource.labels.cluster_name="mdm-cluster-prd-grp"
    resource.labels.namespace_name="mdm-app-prd-grp"
    labels.k8s-pod/name="mdm-prd-grp-was"
    textPayload : "POST /cnt/mng/mng_wfmast_req_checkvalid.jsp"
    EOF
}

# CUJ3-SLI1 : Latency of the requisition approval to register or modify

module "CUJ3-SLI1" {
    source = "../module/01.log-based-metric"
    metric_name_dist = "SRE-requisition-approval-to-register-or-modify-dist"
    metric_display_name_dist = "3-1-requisition-approval-to-register-or-modify-dist"
    metric_name_counter = "SRE-requisition-approval-to-register-or-modify-counter"
    metric_display_name_counter = "3-1-requisition-approval-to-register-or-modify-counter"
    log_filter =<<-EOF
    resource.type="k8s_container"
    resource.labels.project_id="mdm-prod-grp"
    resource.labels.location="asia-northeast3"
    resource.labels.cluster_name="mdm-cluster-prd-grp"
    resource.labels.namespace_name="mdm-app-prd-grp"
    labels.k8s-pod/name="mdm-prd-grp-was"
    textPayload : "POST /adm/mng/mng_wfprocess.jsp"
    EOF
}


# CUJ3-SLI2 : Availability of finding approval line

module "CUJ3-SLI2" {
    source = "../module/01.log-based-metric"
    metric_name_dist = "SRE-avilability-finding-approval-line-dist"
    metric_display_name_dist = "3-2-finding-approval-line-dist"
    metric_name_counter = "SRE-avilability-finding-approval-line-counter"
    metric_display_name_counter = "3-2-finding-approval-line-counter"
    log_filter =<<-EOF
    resource.type="k8s_container"
    resource.labels.project_id="mdm-prod-grp"
    resource.labels.location="asia-northeast3"
    resource.labels.cluster_name="mdm-cluster-prd-grp"
    resource.labels.namespace_name="mdm-app-prd-grp"
    labels.k8s-pod/name="mdm-prd-grp-was"
    textPayload : "POST /cnt/mng/mng_wfmast_req_descp_pop.jsp"
    EOF
}



# CUJ3-SLI3 : Latency of finding approval line

module "CUJ3-SLI3" {
    source = "../module/01.log-based-metric"
    metric_name_dist = "SRE-latency-finding-approval-line-dist"
    metric_display_name_dist = "3-3-latency-finding-approval-line-dist"
    metric_name_counter = "SRE-latency-finding-approval-line-counter"
    metric_display_name_counter = "3-3-latency-finding-approval-line-counter"
    log_filter =<<-EOF
    resource.type="k8s_container"
    resource.labels.project_id="mdm-prod-grp"
    resource.labels.location="asia-northeast3"
    resource.labels.cluster_name="mdm-cluster-prd-grp"
    resource.labels.namespace_name="mdm-app-prd-grp"
    labels.k8s-pod/name="mdm-prd-grp-was"
    textPayload : "POST /cnt/mng/mng_wfmast_req_descp_pop.jsp"
    EOF
}