FROM alpine

MAINTAINER Paris Apoostolopoulos <javapapo@mac.com>

RUN apk add --update bash && apk add --update curl

ADD https://github.com/javapapo/alpine-kubernetes-utils/blob/master/resources/kubectl/kubectl-1.5.3?raw=true /usr/local/bin/kubectl
ADD https://github.com/javapapo/alpine-kubernetes-utils/blob/master/resources/helm/helm-2.3.1?raw=true /usr/local/bin/helm 

RUN set -x && chmod +x /usr/local/bin/kubectl && chmod +x /usr/local/bin/helm

RUN apk add --update libintl && apk add --virtual build_deps gettext && cp /usr/bin/envsubst /usr/local/bin/envsubst && apk del build_deps
