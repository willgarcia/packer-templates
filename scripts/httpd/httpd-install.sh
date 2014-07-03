yum install -y httpd
rm -f /etc/httpd/conf.d/welcome.conf
service httpd start
chkconfig httpd on
iptables -I INPUT -p tcp --dport 80 -j ACCEPT
iptables-save
