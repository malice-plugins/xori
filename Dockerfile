FROM malice/alpine

LABEL maintainer "https://github.com/blacktop"

LABEL malice.plugin.repository = "https://github.com/malice-plugins/xori.git"
LABEL malice.plugin.category="pe"
LABEL malice.plugin.mime="application/x-dosexec"
LABEL malice.plugin.docker.engine="*"

COPY xori.json /usr/sbin/
RUN apk --update add --no-cache rust
RUN apk --update add --no-cache -t .build-deps \
    openssl-dev \
    build-base \
    libffi-dev \
    musl-dev \
    libc-dev \
    cargo \
    gcc \
    git \
    && set -ex \
    && echo "===> Install malice/xori plugin..." \
    && cd /tmp \
    && git clone https://github.com/endgameinc/xori.git \
    && cd xori \
    && cargo build --release \
    && cp xori.json.example xori.json \
    && ./target/release/pesymbols \
    # && mv xori /usr/sbin/xori \
    && echo "\t[*] clean up..." \
    && apk del --purge .build-deps

WORKDIR /malware

ENTRYPOINT ["su-exec","malice","/sbin/tini","--","xori"]
CMD ["--help"]
