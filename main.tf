provider "environment" {}

data "environment_variable" "tfc_run" {
 name = "TFC_RUN_ID"
 fail_if_empty = true
 normalize_file_path = true
}

output "value" {
    value = data.environment_variable.tfc_run.value
}
