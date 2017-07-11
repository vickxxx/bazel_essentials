java_test(
    name = "netty_test",
    size = "small",
    srcs = ["HelloWorldClientTest.java"],
    tags = ["exclusive"],
    test_class = "com.github.lingochamp.bazel_essentials.examples.helloworld.client.HelloWorldClientTest",
    runtime_deps = [
        "//java:netty_runtime_deps",
    ],
    deps = [
        ":client",
        "//examples/helloworld/java/com/github/lingochamp/bazel_essentials/examples/helloworld/server",
        "@junit_junit_4//jar",
    ],
)

java_binary(
    name = "netty",
    main_class = "com.github.lingochamp.bazel_essentials.examples.helloworld.client.HelloWorldClient",
    runtime_deps = [
        ":client",
        "//java:netty_runtime_deps",
    ],
)

java_library(
    name = "client",
    srcs = ["HelloWorldClient.java"],
    deps = [
        # This rule automatically exports //java:grpc_compiletime_deps.
        "//examples/helloworld/proto:java",
    ],
)
