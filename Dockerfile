FROM golang:1.8

WORKDIR /go/src/app

COPY jira-influx .
COPY vendor ./vendor
ADD config.json .

RUN go-wrapper install

ADD ./run.sh /run.sh

RUN chmod 777 .

CMD ["/run.sh"]
