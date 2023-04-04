PROTO_DIR = proto

build: 	generate
	go build .

generate:
	protoc -I${PROTO_DIR} --go_opt=module=${PACKAGE} --go_out=. ${PROTO_DIR}/*.proto

clean:
	rm ${PROTO_DIR}/*.pb.go
	rm go-protobuf

tidy:
	go mod tidy