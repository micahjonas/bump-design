FROM mheiniger/rancher-cli-k8s:v2.2.0 as heini

FROM node:lts-alpine

COPY --from=heini /usr/local/bin/kubectl /usr/local/bin
COPY --from=heini /usr/bin/rancher /usr/bin

RUN apk update
RUN apk add jq
RUN apk add ca-certificates
RUN apk add bash

ENTRYPOINT []
