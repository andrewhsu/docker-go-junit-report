FROM golang:1.10-alpine3.7
RUN apk --no-cache add git
RUN go get -u github.com/jstemmer/go-junit-report

FROM alpine:3.7
COPY --from=0 /go/bin/go-junit-report /usr/local/bin
CMD ["/usr/local/bin/go-junit-report"]
