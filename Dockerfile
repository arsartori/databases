FROM alpine:3.16
LABEL maintainer="Andre Sartori <andre@aph.dev.br>"
LABEL description="MariaDB Server"
LABEL version="10.6.11"
RUN apk add --no-cache mariadb mariadb-client mariadb-server-utils && rm -f /var/cache/apk/*
WORKDIR /opt
EXPOSE 3306
HEALTHCHECK --start-period=5m \
  CMD mariadb -e 'SELECT @@datadir;' || exit 1
CMD ["mariadbd"]
