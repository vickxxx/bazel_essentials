DEPS = {

    # Protobuf required for multiple reasons, including the cc_binary
    # 'protoc' and the cc_library 'protobuf_clib'
    "com_github_google_protobuf": {
        "rule": "http_archive",
        "url": "https://github.com/google/protobuf/archive/52ab3b07ac9a6889ed0ac9bf21afd8dab8ef0014.tar.gz",  # Oct 4, 2016
        "strip_prefix": "protobuf-52ab3b07ac9a6889ed0ac9bf21afd8dab8ef0014",
        #"branch": "v3.1.x",
    },

    # This binds the cc_binary "protoc" into
    # //external:protoc. Required by grpc++.
    "protoc": {
        "rule": "bind",
        "actual": "@com_github_google_protobuf//:protoc",
    },

}
