FROM docker:1.10.3

RUN apk add --no-cache perl make
RUN cpan App::Prove;
