FROM node:lts-alpine
RUN apk update && \
    apk add --no-cache build-base git openssh-client python3 py-pip && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/* && \
    pip install awscli

ENTRYPOINT [ "sh" ]
