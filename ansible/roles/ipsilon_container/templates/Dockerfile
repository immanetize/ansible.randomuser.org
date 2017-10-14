from fedora

RUN dnf -qy update && dnf clean all
RUN dnf -qy install ipsilon ipsilon-infosssd ipsilon-saml2 ipsilon-authgssapi ipsilon-tools-ipa httpd mod_ssl && dnf clean all
RUN systemctl enable httpd
RUN systemctl disable sssd

EXPOSE 80/TCP
EXPOSE 443/TCP
CMD [ "/usr/lib/systemd/systemd" ]
