FROM alpine:3.6
MAINTAINER Adam Dodman <adam.dodman@gmx.com>

ENV UID=901 UNAME=couchpotato GID=900 GNAME=media

ADD start.sh /start.sh

RUN chmod +x /start.sh \
 && addgroup -g $GID $GNAME \
 && adduser -SH -u $UID -G $GNAME -s /usr/sbin/nologin $UNAME \
 && apk add --no-cache python unrar tar git \
 && mkdir /couchpotato && chown $UID:$GID /couchpotato

USER $UID

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /couchpotato

VOLUME ["/config", "/media"]
EXPOSE 5050
CMD ["/start.sh"]
