FROM golang:1.19

RUN mkdir /testwebhook
WORKDIR /testwebhook
COPY . /testwebhook
RUN go build main.go
EXPOSE 9090
CMD ./main

