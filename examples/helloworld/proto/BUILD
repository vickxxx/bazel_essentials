package(default_visibility = ["//visibility:public"])

load("//cpp:rules.bzl", "cc_proto_library")
load("//go:rules.bzl", "go_proto_library")
load("//java:rules.bzl", "java_proto_library")
load("//protobuf:rules.bzl", "proto_compile")
load("//python:rules.bzl", "py_proto_compile")
load("//ruby:rules.bzl", "ruby_proto_compile")

filegroup(
    name = "protos",
    srcs = ["helloworld.proto"],
)

cc_proto_library(
    name = "cpp",
    proto_deps = [
        "//examples/proto:cpp",
    ],
    protos = [":protos"],
    verbose = 0,
    with_grpc = True,
)

go_proto_library(
    name = "go",
    proto_deps = [
        "//examples/proto:go_default_library",
    ],
    protos = [":protos"],
    verbose = 0,
    with_grpc = True,
)

java_proto_library(
    name = "java",
    proto_deps = [
        "//examples/proto:java",
    ],
    protos = [":protos"],
    verbose = 0,
    with_grpc = True,
)

py_proto_compile(
    name = "py",
    protos = [":protos"],
    with_grpc = True,
    deps = [
        "//examples/proto:py",
    ],
)

ruby_proto_compile(
    name = "ruby",
    protos = [":protos"],
    with_grpc = True,
    deps = [
        "//examples/proto:ruby",
    ],
)
