FROM alpine:3.4

RUN apk add --no-cache perl make docker
RUN cpan App::Prove;
