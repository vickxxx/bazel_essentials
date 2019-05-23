load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/lingochamp/rules_go/archive/d88537f26fa530e32095957f374b26bdef9ead96.tar.gz",
        sha256 = "7afb888865f383df09c170c65f5ede8a3aff4d463875b1aa92a5b58f304738de",
        strip_prefix = "rules_go-d88537f26fa530e32095957f374b26bdef9ead96",
    )
