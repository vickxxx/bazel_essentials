workspace(name = "org_pubref_rules_protobuf")

# ================================================================
# Go support requires rules_go
# ================================================================

http_archive(
    name = "io_bazel_rules_go",
    urls = [
        "http://mirror.bazel.build/github.com/bazelbuild/rules_go/archive/69cc1f1cb88496fd8d7d76a7bd8c828967faf9f0.tar.gz",
        "https://github.com/bazelbuild/rules_go/archive/69cc1f1cb88496fd8d7d76a7bd8c828967faf9f0.tar.gz",
    ],
    strip_prefix = "rules_go-69cc1f1cb88496fd8d7d76a7bd8c828967faf9f0",
)

new_local_repository(
    name = “local_go_linux”,
    path = “/usr/bin/go”,
    build_file_content = “”,
)

new_local_repository(
    name = "local_go_mac",
    path = "/usr/local/go",
    build_file_content = "",
)

load("@io_bazel_rules_go//go:def.bzl", "go_repositories", "new_go_repository")

go_repositories(go_linux = “@local_go_linux”, go_darwin = "@local_go_mac")

# ================================================================
# Specific Languages Support
# ================================================================

load("//protobuf:rules.bzl", "proto_repositories")

proto_repositories()

load("//cpp:rules.bzl", "cpp_proto_repositories")

cpp_proto_repositories()

load("//java:rules.bzl", "java_proto_repositories", "nano_proto_repositories")

java_proto_repositories()

nano_proto_repositories()

load("//go:rules.bzl", "go_proto_repositories")

go_proto_repositories()

load("//python:rules.bzl", "py_proto_repositories")

py_proto_repositories()

load("//ruby:rules.bzl", "ruby_proto_repositories")

ruby_proto_repositories()
