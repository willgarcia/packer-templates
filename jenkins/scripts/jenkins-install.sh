wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
yum install -y jenkins
chkconfig jenkins on
service jenkins start
iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
iptables-save
