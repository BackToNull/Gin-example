FROM golang:latest

ENV GOPROXY=https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/BackToNull/go-gin-example
COPY . $GOPATH/src/github.com/BackToNull/go-gin-example
RUN go build -o go-gin-example

EXPOSE 8000
ENTRYPOINT ["./go-gin-example"]
