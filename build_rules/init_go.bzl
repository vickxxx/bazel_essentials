load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/vickxxx/rules_go/archive/a188b8078eb9e7251775aaa81de3cb499148f494.tar.gz",
        sha256 = "348adf295f282d32b214492bcd0e01ebd15733fc316357c80e54fb8bcaabd969",
        strip_prefix = "rules_go-a188b8078eb9e7251775aaa81de3cb499148f494",
    )
