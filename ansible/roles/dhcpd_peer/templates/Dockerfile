from fedora

RUN yum -y update && yum clean all
RUN yum -y install dhcp-server
RUN systemctl enable dhcpd
EXPOSE 67/UDP
CMD [ "/usr/lib/systemd/systemd" ]
