FROM debian:buster

RUN apt-get update && apt-get install -y openconnect ocproxy

EXPOSE 9070

COPY /init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
