LDAP INSTALLATION SCRIPT
#yum install openldap-servers migrationtools --yes
#cd /etc/openldap
#updatedb
#locate slapd.conf
#/usr/share/openldap-servers/slapd.conf.obselete
#cp /usr/share/openldap-servers/slapd.conf.obselete slapd.conf
#slappaswd                                                         			### Copy Password From Here ###
#cp /usr/share/openldap-servers/DB_CONFIG.example /var/lib/ldap/DB_CONFIG
#chown ldap.ldap -R /var/lib/ldap/
#vi slapd.conf 													   			
   
   ### Search for rootpw & Paste generate password by slappaswd ###
   ### Search for TLSCertificateFile /etc/openldap/certs/slapdcert.pem
   ### Search for TLSCertificateKeyFile /etc/openldap/certs/slapdkey.pem
   ### Search for my-domain change with example for access to *, suffix "dc=example", rootdn  dc=example

#rm -rf slapd.d/*
#slaptest -f slapd.conf -F slapd.d/

#vi /etc/sysconfig/ldap
   
   ### SLAPD_LDAPS=yes

#openssl req -new -x509 -nodes -out /etc/openldap/certs/slapdcert.pem -keyout /etc/openldap/certs/slapdkey.pem -days 365
#service slapd start
#ldapadd -x -W -D "cn=Manager,dc=example,dc=com" -f /root/base.ldif

