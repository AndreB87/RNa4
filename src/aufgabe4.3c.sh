#!/bin/bash

# Aufgabe 4.3b Rechnernetze AI


#Alle Regeln löschen
iptables -F

# explizite Freigabe für benötigte Adressen 
#/usr/sbin/
iptables -A INPUT -s 141.22.192.100 -j ACCEPT
#/usr/sbin/
iptables -A OUTPUT -s 141.22.192.100 -j ACCEPT
#/usr/sbin/
iptables -A INPUT -s filercpt.informatik.haw-hamburg.de -j ACCEPT
#/usr/sbin/
iptables -A OUTPUT -s filercpt.informatik.haw-hamburg.de -j ACCEPT
#/usr/sbin/
iptables -A INPUT -s localhost -j ACCEPT
#/usr/sbin/
iptables -A OUTPUT -s localhost -j ACCEPT

# Eingehenden Verkehr stoppen
#/usr/sbin/iptables -A INPUT -s 172.16.1.0/24 -j DROP

# Ausgehenden Verkehr stoppen
#/usr/sbin/iptables -A OUTPUT -s 172.16.1.0/24 -j DROP

# Port 51000 für TCP freigeben
#/usr/sbin/
iptables -A INPUT -p tcp -s 172.16.1.0/24 -j DROP
#/usr/sbin/
iptables -A OUTPUT -p tcp -s 172.16.1.0/24 -j DROP
