FROM golang:1.18

WORKDIR $GOPATH/src/github.com/JakubBialoskorski/go-says-hello

COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 8080

CMD ["go-says-hello"]