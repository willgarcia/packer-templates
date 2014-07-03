#!/bin/bash -eu

wget -O /etc/yum.repos.d/sonar.repo http://downloads.sourceforge.net/project/sonar-pkg/rpm/sonar.repo
yum install -y sonar
chkconfig sonar on
iptables -I INPUT -p tcp --dport 9000 -j ACCEPT
iptables-save

service sonar start
