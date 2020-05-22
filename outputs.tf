output "value_branch" {
  value = data.environment_variable.branch.value
}

output "value_commit" {
  value = data.environment_variable.commit.value
}

output "value_tag" {
  value = data.environment_variable.tag.value
}

output "value_run" {
  value = data.environment_variable.run.value
}


output "value_ws_name" {
  value = data.environment_variable.ws_name.value
}

output "value_slug" {
  value = data.environment_variable.slug.value
}

output "value_custom" {
  value = data.environment_variable.custom.value
}