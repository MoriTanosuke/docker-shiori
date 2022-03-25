FROM golang:1.18 as builder

WORKDIR /src
ENV CGO_ENABLED=0
RUN git clone https://github.com/go-shiori/shiori.git \
	&& cd shiori \
	&& go get \
	&& go build

FROM alpine:3 as runner

RUN apk update && apk add curl

WORKDIR /shiori
COPY --from=builder /src/shiori/shiori .

CMD ["/shiori/shiori", "serve", "--portable"]

EXPOSE 8080
