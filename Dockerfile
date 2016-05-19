FROM debian:jessie

ADD start.sh /start.sh

RUN chmod +x /start.sh \
	&& echo "deb http://http.us.debian.org/debian stable main contrib non-free" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y git python2.7 unrar \
	&& useradd --system -u 745 -M --shell /usr/sbin/nologin couchpotato \
	&& mkdir /couchpotato && chown couchpotato:couchpotato /couchpotato

USER couchpotato

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /couchpotato



VOLUME ["/config"]
EXPOSE 5050

CMD ["/start.sh"]
