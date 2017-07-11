package greeter_test

import (
	"log"
	"net"
	"os"
	"testing"

	greeter "github.com/lingochamp/bazel_essentials/examples/helloworld/go/server/greeter"
	pb "github.com/lingochamp/bazel_essentials/examples/helloworld/proto/go"
	"golang.org/x/net/context"
	"google.golang.org/grpc"
)

const (
	port        = ":50051"
	address     = "localhost:50051"
	defaultName = "world"
)

func startServer() {
	lis, err := net.Listen("tcp", port)
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	s := grpc.NewServer()
	pb.RegisterGreeterServer(s, &greeter.Server{})
	s.Serve(lis)
}

func TestClient(t *testing.T) {
	go startServer()

	// Set up a connection to the server.
	conn, err := grpc.Dial(address, grpc.WithInsecure())
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}
	defer conn.Close()
	c := pb.NewGreeterClient(conn)
	// Contact the server and print out its response.
	name := defaultName
	if len(os.Args) > 1 {
		name = os.Args[1]
	}
	r, err := c.SayHello(context.Background(), &pb.HelloRequest{Name: name})
	if err != nil {
		log.Fatalf("could not greet: %v", err)
	}
	log.Printf("Greeting: %s", r.Message)
}
