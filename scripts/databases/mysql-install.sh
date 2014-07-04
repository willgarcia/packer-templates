if [ $install_mysql = "true" ]
then
  yum install -y mysql-server
  chkconfig mysqld on

  service mysqld start
  iptables -I INPUT -p tcp --dport 3306 -j ACCEPT
  iptables-save
fi
