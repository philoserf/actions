workflow "github-pages" {
  on       = "push"

  resolves = [
    "build-deploy"
  ]
}

action "only_master" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "build-deploy" {
  uses    = "philoserf/actions/gh-pages@master"
  needs   = "only_master"

  secrets = [
    "GITHUB_TOKEN"
  ]
}
