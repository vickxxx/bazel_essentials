load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://codeload.github.com/vickxxx/rules_go/tar.gz/k0.7.1",
        sha256 = "77a612b71fef58845a12c3c76f6e56a83b197bd34245f6fb9a37348e0c64c075",
        strip_prefix = "rules_go-k0.7.1",
    )
