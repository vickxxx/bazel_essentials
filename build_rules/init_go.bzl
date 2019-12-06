load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/lingochamp/rules_go/archive/d8f26fc6e707e951e9069790fc2098420fc9b82d.tar.gz",
        sha256 = "b7d50d95a9252c69f850af79caf4adc84a654a8a8e24c281cd8fd61e49fa67dc",
        strip_prefix = "rules_go-d8f26fc6e707e951e9069790fc2098420fc9b82d",
    )
