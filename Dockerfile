FROM python:3.10-alpine3.18

COPY QUACKERY_* run_quackery /tmp/
RUN apk update && \
    apk add git && \
    mkdir -p /opt && \
    cd /opt && \
    git clone https://github.com/GordonCharlton/Quackery/ quackery && \
    cd quackery && \
    git reset --hard $(cat /tmp/QUACKERY_COMMIT_HASH) && \
    mv /tmp/run_quackery /opt/quackery/quackery.py /usr/local/bin/ && \
    cd / && \
    rm -rf /opt/quackery && \
    apk del git
