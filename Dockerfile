FROM golang:1.20

WORKDIR /app
COPY go.mod .
COPY go.sum .
COPY server.go .

RUN go get
RUN CGO_ENABLED=0 go build -v -o bin .

ENTRYPOINT [ "/app/bin" ]