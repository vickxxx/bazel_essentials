package(default_visibility = ["//visibility:public"])

load("//cpp:rules.bzl", "cc_proto_library")
load("//go:rules.bzl", "go_proto_library")
load("//java:rules.bzl", "java_proto_library")
load("//python:rules.bzl", "py_proto_compile")
load("//protobuf:rules.bzl", "proto_compile")
load("//ruby:rules.bzl", "ruby_proto_compile")

filegroup(
    name = "protos",
    srcs = [
        "common.proto",
    ],
)

cc_proto_library(
    name = "cpp",
    protos = [":protos"],
)

go_proto_library(
    name = "go",
    protos = [":protos"],
    verbose = 0,
)

java_proto_library(
    name = "java",
    protos = [":protos"],
)

py_proto_compile(
    name = "py",
    protos = [":protos"],
    verbose = 0,
    with_grpc = False,
)

ruby_proto_compile(
    name = "ruby",
    protos = [":protos"],
    verbose = 0,
    with_grpc = False,
)

# This conflicts with outputs from other rules here but demonstrates
# how to generate multiple language outputs simultaneously.
#
#proto_compile(
#    name = "pluriproto",
#    protos = [":protos"],
#    langs = [
#        "//ruby",
#        "//java",
#        "//java:nano",
#        "//python",
#        "//cpp",
#        "//go",
#    ],
#    verbose = 2,
#    with_grpc = True,
#)
