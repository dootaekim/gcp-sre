module "CUJ1-SLI1-latency-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ1-SLI1"
    type = "Latency"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ1-SLI1-monitoring.dist_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ1-SLI2-latency-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ1-SLI2"
    type = "Latency"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ1-SLI2-monitoring.dist_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ2-SLI1-latency-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ2-SLI1"
    type = "Latency"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ2-SLI1-monitoring.dist_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ2-SLI2-latency-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ2-SLI2"
    type = "Latency"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ2-SLI2-monitoring.dist_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ3-SLI1-latency-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ3-SLI1"
    type = "Latency"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ3-SLI1-monitoring.dist_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ3-SLI2-latency-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ1-SLI1"
    type = "Latency"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ3-SLI2-monitoring.dist_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ3-SLI3-latency-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ3-SLI3"
    type = "Latency"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ3-SLI3-monitoring.dist_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ1-SLI1-availability-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ1-SLI1"
    type = "Availability"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ1-SLI1-monitoring.counter_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}

module "CUJ1-SLI2-availability-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ1-SLI2"
    type = "Availability"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ1-SLI2-monitoring.counter_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ2-SLI1-availability-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ2-SLI1"
    type = "Availability"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ2-SLI1-monitoring.counter_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ2-SLI2-availability-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ2-SLI2"
    type = "Availability"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ2-SLI2-monitoring.counter_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ3-SLI1-availability-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ3-SLI1"
    type = "Availability"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ3-SLI1-monitoring.counter_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ3-SLI2-availability-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ1-SLI1"
    type = "Availability"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ3-SLI2-monitoring.counter_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}
module "CUJ3-SLI3-availability-alert"{
    source = "../module/03.slo-alert-policy"
    custom_services_service_name = "CUJ3-SLI3"
    type = "Availability"
    custome_services_slo = "select_slo_burn_rate(\"${module.CUJ3-SLI3-monitoring.counter_slo_name}\", 60m)"
    custom_services_burn_rate = "2"
    error_duration = "120s"
}