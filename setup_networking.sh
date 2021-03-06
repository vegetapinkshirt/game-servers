#!/bin/sh

./brh-compose prod up --no-start
iptables -t nat -A POSTROUTING -s 10.1.0.0/16 ! -o bridge-tf2 -j SNAT --to-source 69.162.82.213
iptables -t nat -A POSTROUTING -s 10.2.0.0/16 ! -o bridge-css -j SNAT --to-source 69.162.82.211
iptables -t nat -A POSTROUTING -s 10.3.0.0/16 ! -o bridge-pz -j SNAT --to-source 69.162.82.210