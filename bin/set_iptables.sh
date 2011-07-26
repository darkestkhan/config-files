#!/usr/bin/env bash

# from how many open udp ports I can get rid of?
iptables -A INPUT -i lo -p tcp -j ACCEPT
iptables -A INPUT -p tcp --dport 15 -j ACCEPT
iptables -A INPUT -p udp --dport 15 -j ACCEPT
iptables -A INPUT -p tcp --dport 20:21 -j ACCEPT
echo 'line 8'
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p udp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 24:25 -j ACCEPT
echo 'line 12'
iptables -A INPUT -p udp --dport 24 -j ACCEPT
iptables -A INPUT -p tcp --dport 34 -j ACCEPT
iptables -A INPUT -p udp --dport 34 -j ACCEPT
iptables -A INPUT -p tcp --dport 53 -j ACCEPT
iptables -A INPUT -p udp --dport 53 -j ACCEPT
iptables -A INPUT -p tcp --dport 57 -j ACCEPT
iptables -A INPUT -p udp --dport 67:69 -j ACCEPT # dhcp
echo 'line 20'
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p udp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 88 -j ACCEPT
iptables -A INPUT -p udp --dport 88 -j ACCEPT
iptables -A INPUT -p tcp --dport 111 -j ACCEPT
iptables -A INPUT -p udp --dport 111 -j ACCEPT
iptables -A INPUT -p tcp --dport 113 -j ACCEPT
iptables -A INPUT -p tcp --dport 115 -j ACCEPT
iptables -A INPUT -p udp --dport 123 -j ACCEPT
iptables -A INPUT -p tcp --dport 143 -j ACCEPT
iptables -A INPUT -p udp --dport 143 -j ACCEPT
iptables -A INPUT -p tcp --dport 194 -j ACCEPT
iptables -A INPUT -p udp --dport 194 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --dport 464:465 -j ACCEPT
echo 'line 36'
iptables -A INPUT -p udp --dport 464 -j ACCEPT
iptables -A INPUT -p tcp --dport 546:547 -j ACCEPT
iptables -A INPUT -p udp --dport 546:547 -j ACCEPT
echo 'line 40'
iptables -A INPUT -p tcp --dport 554 -j ACCEPT
iptables -A INPUT -p udp --dport 554 -j ACCEPT
iptables -A INPUT -p tcp --dport 563 -j ACCEPT
iptables -A INPUT -p udp --dport 563 -j ACCEPT
iptables -A INPUT -p tcp --dport 587 -j ACCEPT
iptables -A INPUT -p tcp --dport 631 -j ACCEPT
iptables -A INPUT -p udp --dport 631 -j ACCEPT
iptables -A INPUT -p tcp --dport 647 -j ACCEPT
iptables -A INPUT -p tcp --dport 749 -j ACCEPT
iptables -A INPUT -p udp --dport 749 -j ACCEPT
iptables -A INPUT -p tcp --dport 847 -j ACCEPT
iptables -A INPUT -p tcp --dport 911 -j ACCEPT
iptables -A INPUT -p tcp --dport 953 -j ACCEPT
iptables -A INPUT -p udp --dport 953 -j ACCEPT
iptables -A INPUT -p tcp --dport 989:990 -j ACCEPT
iptables -A INPUT -p udp --dport 989:990 -j ACCEPT
echo 'line 57'
iptables -A INPUT -p tcp --dport 1043 -j ACCEPT
iptables -A INPUT -p udp --dport 1043 -j ACCEPT
iptables -A INPUT -p udp --dport 1234 -j ACCEPT
iptables -A INPUT -p tcp --dport 1550 -j ACCEPT
iptables -A INPUT -p tcp --dport 1935 -j ACCEPT
iptables -A INPUT -p tcp --dport 5222 -j ACCEPT # xmpp
iptables -A INPUT -p tcp --dport 5432 -j ACCEPT # postgresql
iptables -A INPUT -p udp --dport 5432 -j ACCEPT # postgresql
iptables -A INPUT -p tcp --dport 6660:6669 -j ACCEPT # irc
echo 'line 67'
iptables -A INPUT -p tcp --dport 6679 -j ACCEPT # ircs
iptables -A INPUT -p tcp --dport 6697 -j ACCEPT # ircs
iptables -A INPUT -p tcp --dport 6881:6887 -j ACCEPT # torrents
iptables -A INPUT -p udp --dport 6881:6887 -j ACCEPT
iptables -A INPUT -p tcp --dport 6888:6900 -j ACCEPT
iptables -A INPUT -p udp --dport 6888:6900 -j ACCEPT
iptables -A INPUT -p tcp --dport 6901:6968 -j ACCEPT
iptables -A INPUT -p udp --dport 6901:6968 -j ACCEPT
iptables -A INPUT -p tcp --dport 6969:6999 -j ACCEPT
iptables -A INPUT -p udp --dport 6969:6999 -j ACCEPT
echo 'line 78'
iptables -A INPUT -p tcp --dport 8010 -j ACCEPT # gg
iptables -A INPUT -p tcp --dport 9418 -j ACCEPT # git
iptables -A INPUT -p udp --dport 9418 -j ACCEPT # git
iptables -A INPUT -j DROP

# output -- how manu udp I can delete ?
iptables -A OUTPUT -p tcp --dport 15 -j ACCEPT
iptables -A OUTPUT -p udp --dport 15 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 20:21 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p udp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 24:25 -j ACCEPT
iptables -A OUTPUT -p udp --dport 24 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 34 -j ACCEPT
iptables -A OUTPUT -p udp --dport 34 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 53 -j ACCEPT
iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 57 -j ACCEPT
iptables -A OUTPUT -p udp --dport 67:69 -j ACCEPT # dhcp
echo 'line 98'
iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p udp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 88 -j ACCEPT
iptables -A OUTPUT -p udp --dport 88 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 111 -j ACCEPT
iptables -A OUTPUT -p udp --dport 111 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 113 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 115 -j ACCEPT
iptables -A OUTPUT -p udp --dport 123 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 143 -j ACCEPT
iptables -A OUTPUT -p udp --dport 143 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 194 -j ACCEPT
iptables -A OUTPUT -p udp --dport 194 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 464:465 -j ACCEPT
echo 'line 114'
iptables -A OUTPUT -p udp --dport 464 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 546:547 -j ACCEPT
iptables -A OUTPUT -p udp --dport 546:547 -j ACCEPT
echo 'line 118'
iptables -A OUTPUT -p tcp --dport 554 -j ACCEPT
iptables -A OUTPUT -p udp --dport 554 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 563 -j ACCEPT
iptables -A OUTPUT -p udp --dport 563 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 587 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 631 -j ACCEPT
iptables -A OUTPUT -p udp --dport 631 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 647 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 749 -j ACCEPT
iptables -A OUTPUT -p udp --dport 749 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 847 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 911 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 953 -j ACCEPT
iptables -A OUTPUT -p udp --dport 953 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 989:990 -j ACCEPT
iptables -A OUTPUT -p udp --dport 989:990 -j ACCEPT
echo 'line 135'
iptables -A OUTPUT -p tcp --dport 1043 -j ACCEPT
iptables -A OUTPUT -p udp --dport 1043 -j ACCEPT
iptables -A OUTPUT -p udp --dport 1234 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 1550 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 1935 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 5222 -j ACCEPT # xmpp
iptables -A OUTPUT -p tcp --dport 5432 -j ACCEPT # postgresql
iptables -A OUTPUT -p udp --dport 5432 -j ACCEPT # postgresql
iptables -A OUTPUT -p tcp --dport 6660:6669 -j ACCEPT # irc
echo 'line 145'
iptables -A OUTPUT -p tcp --dport 6679 -j ACCEPT # ircs
iptables -A OUTPUT -p tcp --dport 6697 -j ACCEPT # ircs
iptables -A OUTPUT -p tcp --dport 6881:6887 -j ACCEPT # torrents
iptables -A OUTPUT -p udp --dport 6881:6887 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 6888:6900 -j ACCEPT
iptables -A OUTPUT -p udp --dport 6888:6900 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 6901:6968 -j ACCEPT
iptables -A OUTPUT -p udp --dport 6901:6968 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 6969:6999 -j ACCEPT
iptables -A OUTPUT -p udp --dport 6969:6999 -j ACCEPT
echo 'line 156'
iptables -A OUTPUT -p tcp --dport 8010 -j ACCEPT # gg
iptables -A OUTPUT -p tcp --dport 9418 -j ACCEPT # git
iptables -A OUTPUT -p udp --dport 9418 -j ACCEPT # git
iptables -A OUTPUT -j DROP

