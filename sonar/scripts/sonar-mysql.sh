#!/bin/bash -eu

if [ $install_mysql = "true" ]
then
  mysql -uroot -e "CREATE USER sonar;"
  mysql -uroot -e "CREATE DATABASE sonar DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;"
  mysql -uroot -e "GRANT ALL PRIVILEGES ON sonar.* TO sonar@localhost IDENTIFIED BY 'sonar';"

  sed -i "s/sonar.jdbc.url=jdbc:h2/#sonar.jdbc.url=jdbc:h2/g" /opt/sonar/conf/sonar.properties
  sed -i "s/#sonar.jdbc.url=jdbc:mysql/sonar.jdbc.url=jdbc:mysql/g" /opt/sonar/conf/sonar.properties

  service sonar restart
fi
