FROM docker:1.10.3

RUN apk add --no-cache perl make
RUN cpan App::Prove;
RUN printf '#!/bin/sh\ndocker run -i tnt $1\nretval=$?' > run_docker.sh
RUN printf '#!/bin/sh\nprove -v run_docker.sh :: $1\nretval=$?' > run_test.sh
RUN chmod 777 run_docker.sh
RUN chmod 777 run_test.sh
