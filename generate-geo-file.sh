IPADDR=`curl -s https://check.torproject.org/exit-addresses | grep ExitAddress | awk '{print "\t" $2 " 1;"}'`
echo -e "geo \$torUsers {
\tdefault 0;
$IPADDR
}" > nginx-tor-geo.cfg
