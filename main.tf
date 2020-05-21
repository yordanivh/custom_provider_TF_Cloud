provider "environment" {}

data "environment_variable" "branch" {
 name = "TFC_CONFIGURATION_VERSION_GIT_BRANCH"
 fail_if_empty = true
 normalize_file_path = true
}

data "environment_variable" "commit" {
 name = "TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA"
 fail_if_empty = true
 normalize_file_path = true
}

output "value" {
    value = data.environment_variable.branch.value
}

output "value" {
     value = data.environment_variable.commit.value
 }
