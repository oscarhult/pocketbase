FROM alpine:latest
ARG PB_VERSION=0.22.0
RUN apk add --no-cache unzip ca-certificates
RUN wget -q -O /tmp/pb.zip https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip \
  && unzip /tmp/pb.zip -d /pb/ \
  && rm -rf /tmp/*
VOLUME ["/data", "/public"]
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080", "--dir=/data", "--publicDir=/public"]
HEALTHCHECK --interval=30s --timeout=3s --start-period=1m CMD wget --quiet --no-check-certificate --tries=1 --spider "http://127.0.0.1:8080/api/health" || exit 1
