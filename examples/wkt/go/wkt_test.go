package wkt_test

import (
	"testing"

	fd "github.com/golang/protobuf/protoc-gen-go/descriptor"
	wkt "github.com/lingochamp/rules_protobuf/examples/wkt/go/protolib"
)

func TestWkt(t *testing.T) {
	filename := "wkt.proto"

	message := &wkt.Message{
		Id: "foo",
		File: &fd.FileDescriptorProto{
			Name: &filename,
		},
	}

	if message.Id != "foo" {
		t.Error("Expected foo, got ", message.Id)
	}

	if *message.File.Name != filename {
		t.Error("Expected %s, got %s", filename, message.File.Name)
	}
}
