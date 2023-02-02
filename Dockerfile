FROM golang:1.9

RUN mkdir /testwebhook
WORKDIR /testwebhook
COPY . /testwebhook
RUN go build main.go
EXPOSE 9090
CMD ./main

