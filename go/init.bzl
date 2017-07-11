def init_go():
  # NOTE(yi.sun): This is not the newest version of rules_go. However, we
  # have to stuck with this version as later commits do not allow using local
  # go installation, which becomes a problem in China as downloading 100M
  # go installation packages takes forever.
  native.http_archive(
      name = "io_bazel_rules_go",
      url = "https://github.com/bazelbuild/rules_go/archive/69cc1f1cb88496fd8d7d76a7bd8c828967faf9f0.tar.gz",
      strip_prefix = "rules_go-69cc1f1cb88496fd8d7d76a7bd8c828967faf9f0",
  )
