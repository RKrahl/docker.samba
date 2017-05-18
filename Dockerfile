FROM rkrahl/opensuse:42.2

MAINTAINER Rolf Krahl <rolf.krahl@helmholtz-berlin.de>

RUN zypper --non-interactive install \
	samba

COPY start-samba.sh /usr/lib/samba
RUN chmod 0755 /usr/lib/samba/start-samba.sh

CMD ["/usr/lib/samba/start-samba.sh"]

EXPOSE 139 445

