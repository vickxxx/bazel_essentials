def init_go():
  # NOTE(yi.sun): This is not the newest version of rules_go. However, we
  # have to stuck with this version as later commits do not allow using local
  # go installation, which becomes a problem in China as downloading 100M
  # go installation packages takes forever.
  native.http_archive(
      name = "io_bazel_rules_go",
      url = "https://github.com/lingochamp/rules_go/archive/d83bf7cf99979003908f58dd6fe2805e22a52d76.tar.gz",
      strip_prefix = "rules_go-d83bf7cf99979003908f58dd6fe2805e22a52d76",
  )
