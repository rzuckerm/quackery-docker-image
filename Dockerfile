FROM python:3.10-alpine3.18

COPY QUACKERY_* /tmp/
RUN apk update && \
    apk add git && \
    mkdir -p /opt && \
    cd /opt && \
    git clone https://github.com/GordonCharlton/Quackery/ quackery && \
    cd quackery && \
    git reset --hard $(cat /tmp/QUACKERY_COMMIT_HASH) && \
    find . -mindepth 1 -maxdepth 1 '!' -name 'quackery.py' -exec rm -rf '{}' ';' && \
    apk del git
