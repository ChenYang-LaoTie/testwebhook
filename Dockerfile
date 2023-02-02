FROM golang:1.9

RUN mkdir /testwebhook
WORKDIR /EaseSearch
COPY . /testwebhook
RUN cd testwebhook \
    && go build main.go
EXPOSE 9090
CMD ./main

