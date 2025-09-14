ARG BUILD_FROM=icereed/paperless-gpt:latest
FROM ${BUILD_FROM}

RUN apk add --no-cache bash jq

COPY run.sh /
RUN chmod a+x /run.sh

EXPOSE 8080

ENTRYPOINT ["/run.sh"]