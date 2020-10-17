#!/bin/sh

# Add your username and password to your environment before executing
# export NORDVPN_ACCOUNT="XXXXX"
# export NORDVPN_PW="XXXXX"
# sudo -E bash -c "./add_auth_ovpn_files.sh"

cd /etc/openvpn/client/ovpn_tcp
sed "s/^auth-user-pass$/auth-user-pass login.txt/g" *.ovpn -i
touch login.txt
printf "$NORDVPN_ACCOUNT\n$NORDVPN_PW\n" > login.txt

cd /etc/openvpn/client/ovpn_udp
sed "s/^auth-user-pass$/auth-user-pass login.txt/g" *.ovpn -i
touch login.txt
printf "$NORDVPN_ACCOUNT\n$NORDVPN_PW\n" > login.txt
