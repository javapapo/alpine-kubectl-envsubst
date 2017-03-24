FROM alpine

MAINTAINER Paris Apoostolopoulos <javapapo@mac.com>
RUN apk add --update bash 
RUN apk add --update curl 
ADD https://storage.googleapis.com/kubernetes-release/release/v1.5.3/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN set -x && chmod +x /usr/local/bin/kubectl 
RUN apk add --update libintl && \
    apk add --virtual build_deps gettext &&  \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
apk del build_deps
