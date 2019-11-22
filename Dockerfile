FROM node:current-alpine
RUN apk update \
    && apk add --no-cache git python py-pip \
    && rm -rf /var/cache/apk/* \
    && pip install awscli

ENTRYPOINT [ "sh" ]
