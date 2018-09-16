FROM golang:1.10.3 as reflex
RUN go get github.com/cespare/reflex

FROM haskell
WORKDIR /app
COPY --from=reflex /go/bin/reflex /usr/local/bin/

COPY ./entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
