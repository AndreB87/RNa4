#!/bin/bash

# Aufgabe 4.1 Rechnernetze AI

# Alle Regeln löschen
/usr/sbin/iptables -­F

# Eingehenden Verkehr stoppen
/usr/sbin/iptables -A INPUT -s 172.16.1.0/24 -j DROP

