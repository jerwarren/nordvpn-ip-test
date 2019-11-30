x=1;
while [ $x -lt 1000 ]

do
host `curl --silent -LIX GET https://www.disneyplus.com -H 'Pragma: akamai-x-get-client-ip' | sed -n 's/.*Client-IP: \([^,]*\),.*/\1/p'` >> nordhosts.txt
done
