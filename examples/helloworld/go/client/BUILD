package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_go//go:def.bzl", "go_binary")
load(
    "//go:rules.bzl",
    GO_GRPC_COMPILE_DEPS = "GRPC_COMPILE_DEPS",
)

go_binary(
    name = "client",
    srcs = ["main.go"],
    deps = ["//examples/helloworld/proto:go"] + GO_GRPC_COMPILE_DEPS,
)
