yum install -y screen
yum install -y vim
yum install -y iotop
yum install -y nfs-utils
yum install -y mlocate

rpm -Uvh http://mir01.syntis.net/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y htop
yum install -y ncdu
yum install -y wget

# Slow DNS fix applied (single-request-reopen)
echo 'RES_OPTIONS="single-request-reopen"' >> /etc/sysconfig/network
service network restart
