FROM alpine:latest
ARG PB_VERSION=0.12.3
RUN apk add --no-cache unzip ca-certificates
ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/
VOLUME ["/data", "/public"]
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080", "--dir=/data", "--publicDir=/public"]
