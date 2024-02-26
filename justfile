generate:
  protoc --proto_path=proto proto/*.proto --go_out=. --go-grpc_out=.

docker-build:
  docker build -t doc-grpc .

docker-run:
  docker run --name grpc-server -p 8080:8080 doc-grpc
