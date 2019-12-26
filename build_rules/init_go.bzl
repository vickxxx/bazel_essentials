load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/vickxxx/rules_go/archive/b2c5c0ccf3175bdc107847901b6a824212b8153c.tar.gz",
        sha256 = "1ff17b694ed62c3385c245c2b556107ff63a6312fab783eabd97fa9544e6ad9e",
        strip_prefix = "rules_go-b2c5c0ccf3175bdc107847901b6a824212b8153c",
    )
