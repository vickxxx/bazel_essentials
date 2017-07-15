"""Repository rules for pulling liulishuo repositories."""

load("@io_bazel_rules_go//go:def.bzl", "go_repository")

def _fetch_commit(ctx, remote, ref):
  result = ctx.execute(["git", "ls-remote", "--heads", remote])
  if result.return_code:
    fail("%s: failed to query repo %s, err: %s" % (ctx.name, remote, result.stderr))
  # Every output line is in the form
  # <SHA1>    <ref>
  for ln in result.stdout.splitlines():
    i = ln.rfind(ref)
    if i < 0:
      continue
    commit = ln[:40]  # SHA1 is 40 bytes
    print("%s: ref %s from repo %s is at %s" % (ctx.name, ref, remote, commit))
    return commit
  fail("%s: cannot find ref %s from repo %s" % (ctx.name, ref, remote))

def _lls_repository_head_impl(ctx):
  result = ctx.execute([
      ctx.path(ctx.attr._fetch_repo),
      "--dest", ctx.path(""),
      "--remote", ctx.attr.remote,
      "--rev", _fetch_commit(ctx, ctx.attr.remote, "refs/heads/master"),
      "--vcs", "git",
      "--importpath", ctx.attr.importpath,
  ])
  if result.return_code:
    fail("%s: failed to fetch from repo %s, err: %s" % (ctx.name, ctx.attr.remote, result.stderr))

_lls_repository_head = repository_rule(
    implementation = _lls_repository_head_impl,
    attrs = {
        "importpath": attr.string(mandatory = True),
        "remote": attr.string(mandatory = True),
        "_fetch_repo": attr.label(
            default = Label("@io_bazel_rules_go_repository_tools//:bin/fetch_repo"),
            allow_files = True,
            single_file = True,
            executable = True,
            cfg = "host",
        ),
    },
)

def lls_repository(name, path, commit=None, tag=None, use_local_version=0):
  """A liulishuo repository.

  If neither commit nor tag is specified, which should be the default case, then
  we pull the refs/heads/master from the repository for each build. This ensures
  that any internal change propagates to all the other repositories.

  name: (string) Name of the repository.
  path: (string) Name relative to git.llsapp.com. E.g.,
    git.llsapp.com/common/protos will have path name common/protos.
  commit: (string) Commit.
  tag: (string) Tag.
  use_local_version: (int) If 1, use the local mirror of the repository. This
    assumes that the local folder structure mirrors that one on gitlab.
  """
  if use_local_version:
    return native.local_repository(
        name = name,
        path = "../../" + path,
    )
  importpath = "git.llsapp.com/" + path
  remote = "git@git.llsapp.com:" + path + ".git"
  if commit or tag:
    # This is a temporary hack as only go_repository supports pulling code using
    # git@... protocol. Bazel only supports https, which happens to be not
    # supported by our gitlab: (.)
    #
    # TODO(yi.sun): Figure out a way to always pull the master head.
    return go_repository(
        name = name,
        importpath = importpath,
        remote = remote,
        vcs = "git",
        commit = commit,
        tag = tag,
    )

  # No commit or tag specified, just pull from the master head.
  return _lls_repository_head(
      name = name,
      importpath = importpath,
      remote = remote,
  )
