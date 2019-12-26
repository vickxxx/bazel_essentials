load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/vickxxx/rules_go/archive/ca4954ca2476abba85e8a67773707d94d6341b64.tar.gz",
        sha256 = "c0bd08e01c9d077f458db69d494d55cc54454068707696a4e3dfc3c6c4613eb1",
        strip_prefix = "rules_go-ca4954ca2476abba85e8a67773707d94d6341b64",
    )
