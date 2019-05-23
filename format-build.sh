buildifier WORKSPACE

find . -name BUILD | xargs buildifier

find . -name *.bzl | xargs buildifier
