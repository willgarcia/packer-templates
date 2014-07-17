yum -y groupinstall "Development Tools"
yum -y install libxslt-devel libyaml-devel libxml2-devel gdbm-devel libffi-devel zlib-devel openssl-devel libyaml-devel readline-devel curl-devel openssl-devel pcre-devel git memcached-devel valgrind-devel mysql-devel ImageMagick-devel ImageMagick

cd /tmp
tar zxvf ruby-2.1.2.tar.gz
cd ruby-2.1.2
./configure
make
make install
sleep 4000
