# https://www.terraform.io/docs/cloud/run/run-environment.html#environment-variables
# https://github.com/rpatrick00/terraform-provider-environment
# https://github.com/achuchulev/custom_provider_TF_Cloud

data "environment_variable" "branch" {
  name                = "TFC_CONFIGURATION_VERSION_GIT_BRANCH"
  fail_if_empty       = true
  normalize_file_path = true
}

data "environment_variable" "commit" {
  name                = "TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA"
  fail_if_empty       = true
  normalize_file_path = true
}

data "environment_variable" "tag" {
  name                = "TFC_CONFIGURATION_VERSION_GIT_TAG"
  fail_if_empty       = true
  normalize_file_path = true
}

data "environment_variable" "run" {
  name                = "TFC_RUN_ID"
  fail_if_empty       = true
  normalize_file_path = true
}

data "environment_variable" "ws_name" {
  name                = "TFC_WORKSPACE_NAME"
  fail_if_empty       = true
  normalize_file_path = true
}

data "environment_variable" "slug" {
  name                = "TFC_WORKSPACE_SLUG"
  fail_if_empty       = true
  normalize_file_path = true
}

data "environment_variable" "custom" {
  name                = "TFC_CUSTOM"
  fail_if_empty       = true
  normalize_file_path = true
}

resource "null_resource" "smart" {
  triggers = {
    uuid = uuid()
  }
}