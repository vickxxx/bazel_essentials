def init_go():
  # NOTE(yi.sun): This is not the newest version of rules_go. However, we
  # have to stuck with this version as later commits do not allow using local
  # go installation, which becomes a problem in China as downloading 100M
  # go installation packages takes forever.
  native.http_archive(
      name = "io_bazel_rules_go",
      url = "https://github.com/lingochamp/rules_go/archive/7fd05e470093e6b68f305ab91c451e40decef7a2.tar.gz",
      strip_prefix = "rules_go-7fd05e470093e6b68f305ab91c451e40decef7a2",
  )
