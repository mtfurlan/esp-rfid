workflow "PR Audit" {
  on = "pull_request"
  resolves = ["EC Audit PR"]
}

action "EC Audit PR" {
  uses = "zbeekman/EditorConfig-Action@v1.1.0"
  env = {
    ALWAYS_LINT_ALL_FILES = "false" # This is the default
  }
}
