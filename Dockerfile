FROM openjdk:8

ARG VERSION

ENV PROTOCOL imap
ENV HOST imap.gmail.com
ENV PORT 993
ENV SSL true

RUN DEBIAN_FRONTEND=noninteractive apt update && apt install -y gettext

ADD https://github.com/salyh/elasticsearch-imap/releases/download/${VERSION}/elasticsearch-importer-imap-${VERSION}-bin.zip /elasticsearch-imap.zip
RUN unzip /elasticsearch-imap.zip \
      && mv /elasticsearch-importer-imap-${VERSION}-bin /app

WORKDIR /app

COPY config.json /etc/config.json
COPY run.sh /app/bin/run

ENTRYPOINT ["/app/bin/run"]
