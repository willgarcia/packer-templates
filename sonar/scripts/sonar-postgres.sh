#!/bin/bash -eu

if [ $install_postgres = "true" ]
then
  su postgres -c "psql -c \"CREATE USER sonar WITH PASSWORD 'sonar'\";"
  su postgres -c "psql -c \"CREATE DATABASE sonar WITH OWNER sonar ENCODING 'UTF8';\""

  sed -i "s/sonar.jdbc.url=jdbc:h2/#sonar.jdbc.url=jdbc:h2/g" /opt/sonar/conf/sonar.properties
  sed -i "s/#sonar.jdbc.url=jdbc:postgresql/sonar.jdbc.url=jdbc:postgresql/g" /opt/sonar/conf/sonar.properties

  service sonar restart
fi
