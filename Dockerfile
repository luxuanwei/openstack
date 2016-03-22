FROM library/ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y install keystone
ADD service.sh /service.sh
RUN chmod 755 /service.sh
VOLUME ["/etc/keystone","/var/lib/keystone", "/var/log/keystone"]
CMD ["/service.sh"]