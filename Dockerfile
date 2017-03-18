FROM alpine
MAINTAINER alphayan "664184741@qq.com"
ENV GOPATH /data/go
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories\
    &&apk update && apk add go && apk add nginx && apk add php7-fpm && apk add git\
    &&mkdir -p /data/go && mkdir -p /data/go/src /data/go/bin /data/go/pkg\
    && git config --global http.sslVerify false \
    && go get -u -v github.com/astaxie/beego && go get -u -v github.com/astaxie/bee\
#VOLUME /data
CMD ["/bin/sh"]

