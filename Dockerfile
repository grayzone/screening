FROM grayzone/beego

MAINTAINER Albert Wang

ADD . /go/src/github.com/grayzone/screening

WORKDIR /go/src/github.com/grayzone/screening

RUN go build github.com/grayzone/screening

RUN rm -rf /go/src/github.com/grayzone/screening/.git
RUN rm -rf /go/src/github.com/grayzone/screening/controllers
RUN rm -rf /go/src/github.com/grayzone/screening/routers
RUN rm -rf /go/src/github.com/grayzone/screening/tests
RUN rm -rf /go/src/github.com/grayzone/screening/main.go

EXPOSE 8080

ENTRYPOINT ["/go/src/github.com/grayzone/screening/screening"]

