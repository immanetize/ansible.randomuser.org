from fedora

RUN dnf -y update && yum clean all
RUN dnf install ipsilon ipsilon-infosssd ipsilon-saml2 ipsilon-authgssapi ipsilon-tools-ipa httpd mod_ssl && yum clean all
RUN systemctl enable httpd

EXPOSE 80/TCP
EXPOSE 443/TCP
CMD [ "/usr/lib/systemd/systemd" ]
