curl -s https://check.torproject.org/exit-addresses | grep ExitAddress | awk '{print "deny " $2 ";"}' > tor-deny.conf
