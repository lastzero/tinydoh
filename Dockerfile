FROM golang

LABEL maintainer="Michael Mayer <michael@liquidbytes.net>"

ENV GO111MODULE on

WORKDIR /go/src/github.com/st3fan/tinydoh
COPY . .
RUN go get -v && go build -v
RUN cp tinydoh /usr/local/bin

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/tinydoh"]
