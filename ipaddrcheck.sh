#!/bin/bash
if [[ $1 =~ (([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5]))$ ]]; then
  echo "Looks like an IPv4 IP address"
  exit 0 #Success
elif [[ $1 =~ ^([0-9a-fA-F]{0,4}:){1,7}[0-9a-fA-F]{0,4}$ ]]; then
  echo "Could be an IPv6 IP address"
  exit 0 #Success
else
  echo "This is neither IPv4 nor IPv6 address"
  exit 22 #Invalid argument
fi
