#!/bin/bash
set -e

/usr/local/bin/iptables.sh | /sbin/iptables-restore --counters 
iptables -L -n -v -t filter

tail -f /dev/null
