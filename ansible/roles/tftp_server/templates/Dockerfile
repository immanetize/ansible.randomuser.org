from fedora

RUN yum -y update && yum clean all
RUN yum -y install tftp-server syslinux-tftpboot
RUN systemctl enable tftp.socket
RUN mkdir -p /var/lib/tftpboot/pxelinux.cfg
RUN cp /tftpboot/{pxelinux.0,vesamenu.c32,ldlinux.c32,libcom32.c32,libutil.c32} /var/lib/tftpboot/

EXPOSE 69/UDP
EXPOSE 69/TCP
CMD [ "/usr/lib/systemd/systemd" ]
