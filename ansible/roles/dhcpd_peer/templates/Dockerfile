from fedora

RUN yum -y update && yum clean all
RUN yum -y install dhcp-server

EXPOSE 67/UDP
CMD [ "/usr/sbin/dhcpd", "-f", "-cf", "/etc/dhcp/dhcpd.conf", "-user", "dhcpd", "-group", "dhcpd", "--no-pid", "-d" ]
