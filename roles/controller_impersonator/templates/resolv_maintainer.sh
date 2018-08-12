if dig +short controller.randomuser.org @10.27.0.89; then
  echo -e "search randomuser.org\nnameserver 10.27.0.89" | tee /etc/resolv.conf
else
  echo -e "nameserver 69.20.0.164\nnameserver 69.20.0.196" | tee /etc/resolv.conf
fi
