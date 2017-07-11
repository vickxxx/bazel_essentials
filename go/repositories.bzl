load("@io_bazel_rules_go//go:def.bzl", original_go_repositories = "go_repositories")

def go_repositories():
  native.new_local_repository(
      name = "local_go_linux",
      path = "/usr/lib/go",
      build_file_content = "",
  )
  native.new_local_repository(
      name = "local_go_mac",
      path = "/usr/local/go",
      build_file_content = "",
  )
  original_go_repositories(
      go_darwin = "@local_go_mac",
      go_linux = "@local_go_linux",
  )
