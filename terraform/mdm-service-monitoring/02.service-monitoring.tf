# SLI 1: Availability of the approval to register new BP
module "CUJ1-SLI1-monitoring" {
    # service_id_ == display_name_
    source = "../module/02.service-monitoring"
    
    service_id_dist = "1-1-approval-to-register-new-bp-latency"
    logging_metric_name_dist = "//logging.googleapis.com/user/${module.CUJ1-SLI1.dist_name}"
    
    service_id_counter = "1-1-approval-to-register-new-bp-availability"
    logging_metric_name_counter = "//logging.googleapis.com/user/${module.CUJ1-SLI1.counter_name}"

    goal_dist = 0.9
    range_max = 200
    slo_id_dist = "cuj1-sli1-latency"
    slo_displayname_dist = "99%-Distribution_Cut_Rolling_28_Days"
    slo_logging_metric_name_dist = "logging.googleapis.com/user/${module.CUJ1-SLI1.dist_name}"

    goal_counter = 0.9
    slo_id_counter = "cuj1-sli1-availability"
    slo_displayname_counter = "99%-Good/Total_Ration_Rolling_28_Days"
    slo_logging_metric_name_counter = "logging.googleapis.com/user/${module.CUJ1-SLI1.counter_name}"

}

module "CUJ1-SLI2-monitoring" {
    # service_id_ == display_name_
    source = "../module/02.service-monitoring"
    
    service_id_dist = "1-2-check-exists-countrycode-taxid-in-group-mdm-latency"
    logging_metric_name_dist = "//logging.googleapis.com/user/${module.CUJ1-SLI2.dist_name}"
    
    service_id_counter = "1-2-check-exists-countrycode-taxid-in-group-mdm-availability"
    logging_metric_name_counter = "//logging.googleapis.com/user/${module.CUJ1-SLI2.counter_name}"

    goal_dist = 0.9
    range_max = 200
    slo_id_dist = "cuj1-sli2-latency"
    slo_displayname_dist = "99%-Distribution_Cut_Rolling_28_Days"
    slo_logging_metric_name_dist = "logging.googleapis.com/user/${module.CUJ1-SLI2.dist_name}"

    goal_counter = 0.9
    slo_id_counter = "cuj1-sli2-availability"
    slo_displayname_counter = "99%-Good/Total_Ration_Rolling_28_Days"
    slo_logging_metric_name_counter = "logging.googleapis.com/user/${module.CUJ1-SLI2.counter_name}"
}


module "CUJ2-SLI1-monitoring" {
    # service_id_ == display_name_
    source = "../module/02.service-monitoring"
    
    service_id_dist = "2-1-getting-bp-common-info-from-group-mdm-latency"
    logging_metric_name_dist = "//logging.googleapis.com/user/${module.CUJ2-SLI1.dist_name}"
    
    service_id_counter = "2-1-getting-bp-common-info-from-group-mdm-availability"
    logging_metric_name_counter = "//logging.googleapis.com/user/${module.CUJ2-SLI1.counter_name}"

    goal_dist = 0.9
    range_max = 200
    slo_id_dist = "cuj2-sli1-latency"
    slo_displayname_dist = "99%-Distribution_Cut_Rolling_28_Days"
    slo_logging_metric_name_dist = "logging.googleapis.com/user/${module.CUJ2-SLI1.dist_name}"

    goal_counter = 0.9
    slo_id_counter = "cuj2-sli1-availability"
    slo_displayname_counter = "99%-Good/Total_Ration_Rolling_28_Days"
    slo_logging_metric_name_counter = "logging.googleapis.com/user/${module.CUJ2-SLI1.counter_name}"
}


module "CUJ2-SLI2-monitoring" {
    # service_id_ == display_name_
    source = "../module/02.service-monitoring"
    
    service_id_dist = "2-2-requisition-to-validate-entered-bp-common-and-subsidiary-specific-data-latency"
    logging_metric_name_dist = "//logging.googleapis.com/user/${module.CUJ2-SLI2.dist_name}"
    
    service_id_counter = "2-2-requisition-to-validate-entered-bp-common-and-subsidiary-specific-data-availability"
    logging_metric_name_counter = "//logging.googleapis.com/user/${module.CUJ2-SLI2.counter_name}"

    goal_dist = 0.9
    range_max = 200
    slo_id_dist = "cuj2-sli2-latency"
    slo_displayname_dist = "99%-Distribution_Cut_Rolling_28_Days"
    slo_logging_metric_name_dist = "logging.googleapis.com/user/${module.CUJ2-SLI2.dist_name}"

    goal_counter = 0.9
    slo_id_counter = "cuj2-sli2-availability"
    slo_displayname_counter = "99%-Good/Total_Ration_Rolling_28_Days"
    slo_logging_metric_name_counter = "logging.googleapis.com/user/${module.CUJ2-SLI2.counter_name}"
}


module "CUJ3-SLI1-monitoring" {
    # service_id_ == display_name_
    source = "../module/02.service-monitoring"
    
    service_id_dist = "3-1-requisition-approval-to-register-or-modify-latency"
    logging_metric_name_dist = "//logging.googleapis.com/user/${module.CUJ3-SLI1.dist_name}"
    
    service_id_counter = "3-1-requisition-approval-to-register-or-modify-availability"
    logging_metric_name_counter = "//logging.googleapis.com/user/${module.CUJ3-SLI1.counter_name}"

    goal_dist = 0.9
    range_max = 200
    slo_id_dist = "cuj3-sli1-latency"
    slo_displayname_dist = "99%-Distribution_Cut_Rolling_28_Days"
    slo_logging_metric_name_dist = "logging.googleapis.com/user/${module.CUJ3-SLI1.dist_name}"

    goal_counter = 0.99
    slo_id_counter = "cuj3-sli1-availability"
    slo_displayname_counter = "99%-Good/Total_Ration_Rolling_28_Days"
    slo_logging_metric_name_counter = "logging.googleapis.com/user/${module.CUJ3-SLI1.counter_name}"
}

module "CUJ3-SLI2-monitoring" {
    # service_id_ == display_name_
    source = "../module/02.service-monitoring"
    
    service_id_dist = "3-2-avilability-finding-approval-line-latency"
    logging_metric_name_dist = "//logging.googleapis.com/user/${module.CUJ3-SLI2.dist_name}"
    
    service_id_counter = "3-2-avilability-finding-approval-line-availability"
    logging_metric_name_counter = "//logging.googleapis.com/user/${module.CUJ3-SLI2.counter_name}"

    goal_dist = 0.9
    range_max = 200
    slo_id_dist = "cuj3-sli2-latency"
    slo_displayname_dist = "99%-Distribution_Cut_Rolling_28_Days"
    slo_logging_metric_name_dist = "logging.googleapis.com/user/${module.CUJ3-SLI2.dist_name}"

    goal_counter = 0.9
    slo_id_counter = "cuj3-sli2-availability"
    slo_displayname_counter = "99%-Good/Total_Ration_Rolling_28_Days"
    slo_logging_metric_name_counter = "logging.googleapis.com/user/${module.CUJ3-SLI2.counter_name}"
}

module "CUJ3-SLI3-monitoring" {
    # service_id_ == display_name_
    source = "../module/02.service-monitoring"
    
    service_id_dist = "3-3-latency-finding-approval-line-latency"
    logging_metric_name_dist = "//logging.googleapis.com/user/${module.CUJ3-SLI3.dist_name}"
    
    service_id_counter = "3-3-latency-finding-approval-line-availability"
    logging_metric_name_counter = "//logging.googleapis.com/user/${module.CUJ3-SLI3.counter_name}"

    goal_dist = 0.9
    range_max = 200
    slo_id_dist = "cuj3-sli3-latency"
    slo_displayname_dist = "99%-Distribution_Cut_Rolling_28_Days"
    slo_logging_metric_name_dist = "logging.googleapis.com/user/${module.CUJ3-SLI3.dist_name}"

    goal_counter = 0.99
    slo_id_counter = "cuj3-sli3-availability"
    slo_displayname_counter = "99%-Good/Total_Ration_Rolling_28_Days"
    slo_logging_metric_name_counter = "logging.googleapis.com/user/${module.CUJ3-SLI3.counter_name}"
}