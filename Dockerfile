FROM golang
RUN mkdir -p /go/src/k8s.io/sample-controller
ADD . /go/src/k8s.io/sample-controller
WORKDIR /go
RUN go get -v ./...
RUN go install -v ./...
CMD ["/go/bin/sample-controller"]
