if [ $install_postgres = "true" ]
then
  yum install -y postgresql-server
  /etc/init.d/postgresql initdb
  chkconfig postgresql on
  cp /vagrant/resources/databases/postgresql.conf /var/lib/pgsql/data/postgresql.conf -f
  cp /vagrant/resources/databases/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf -f

  service postgresql start
  iptables -I INPUT -p tcp --dport 5432 -j ACCEPT
  iptables-save
fi
