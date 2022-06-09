#! /bin/bash

certbot renew  > /tmp/crt.txt

cat /tmp/crt.txt | grep "No renewals were attempted"

if [[ $? -eq "0" ]]; then
   echo "Certificates are not due for renewal"
else
   # Create Letsencypt ssl dir if doesn't exist
   echo "Renewing ssl certificate..."
   rm /usr/share/openshr/tomcat/conf/*.pem
   cp /etc/letsencrypt/live/devthebukana.org-0003/{cert,chain,privkey,fullchain}.pem /usr/share/opens$
   chmod +x /usr/share/openshr/tomcat/*.pem
   systemctl restart tomcat.service
fi
