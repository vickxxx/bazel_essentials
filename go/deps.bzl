# ****************************************************************
# List of external dependencies
# ****************************************************************

DEPS = {

    "org_golang_x_net": {
        "rule": "go_repository",
        "importpath": "golang.org/x/net",
        "commit": "054b33e6527139ad5b1ec2f6232c3b175bd9a30c",
    },

    "org_golang_x_text": {
        "rule": "go_repository",
        "importpath": "golang.org/x/text",
        "commit": "cfdf022e86b4ecfb646e1efbd7db175dd623a8fa",
    },

    "org_golang_google_genproto": {
        "rule": "go_repository",
        "importpath": "google.golang.org/genproto",
        "commit": "40b7550fd0ba4b8f7e9d70ed40fcd4f3375db1de",
    },

    "com_github_golang_glog": {
        "rule": "go_repository",
        "importpath": "github.com/golang/glog",
        "commit": "23def4e6c14b4da8ac2ed8007337bc5eb5007998", # Jan 25, 2016
    },

    "com_github_golang_protobuf": {
        "rule": "go_repository",
        "importpath": "github.com/golang/protobuf",
        "commit": "8ee79997227bf9b34611aee7946ae64735e6fd93", # ~ Nov 16, 2016
    },

    "org_golang_google_grpc": {
        "rule": "go_repository",
        "importpath": "google.golang.org/grpc",
        "tag": "v1.4.2",
    },

}
