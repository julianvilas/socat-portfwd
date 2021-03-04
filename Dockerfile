FROM alpine

RUN apk add --update --no-cache socat

COPY ./socat.sh /socat.sh

CMD ["/socat.sh"]
