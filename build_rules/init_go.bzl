load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/vickxxx/rules_go/archive/452a9ea338a6503445efaabdbd8723f0764b1624.tar.gz",
        sha256 = "f0d9b22baf8cc8982548bad08215f0b423b3a32f600eefb4253fed73204afbe5",
        strip_prefix = "rules_go-452a9ea338a6503445efaabdbd8723f0764b1624",
    )
