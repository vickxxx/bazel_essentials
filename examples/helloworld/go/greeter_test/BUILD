package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_go//go:def.bzl", "go_test")

go_test(
    name = "greeter_test",
    size = "small",
    srcs = ["greeter_test.go"],
    tags = ["exclusive"],
    deps = [
        "//examples/helloworld/proto:go",
        "//examples/helloworld/go/server:greeter",
        "@com_github_golang_glog//:go_default_library",
        "@com_github_golang_protobuf//proto:go_default_library",
        "@org_golang_google_grpc//:go_default_library",
        "@org_golang_x_net//context:go_default_library",
    ],
)
