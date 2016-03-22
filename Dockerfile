FROM ubuntu:trusty
MAINTAINER niusmallnan <zhangzb@neunn.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y install keystone
ADD service.sh /service.sh
RUN chmod 755 /service.sh
VOLUME ["/etc/keystone","/var/lib/keystone", "/var/log/keystone"]
CMD ["/service.sh"]