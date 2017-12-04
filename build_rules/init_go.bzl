def init_go():
  # NOTE(yi.sun): This is not the newest version of rules_go. However, we
  # have to stuck with this version as later commits do not allow using local
  # go installation, which becomes a problem in China as downloading 100M
  # go installation packages takes forever.
  native.http_archive(
      name = "io_bazel_rules_go",
      url = "https://github.com/lingochamp/rules_go/archive/afb01df370258315bd1f74c0643e2f3ec575a1c4.tar.gz",
      strip_prefix = "rules_go-afb01df370258315bd1f74c0643e2f3ec575a1c4",
  )
