load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/lingochamp/rules_go/archive/7b83d9b47bed199d6abb42fb93502f98ab1a803c.tar.gz",
        sha256 = "84ac4bbf12625246607312df1d07217b9c4e45e9a6734d89a5439d1aaf4074af",
        strip_prefix = "rules_go-7b83d9b47bed199d6abb42fb93502f98ab1a803c",
    )
