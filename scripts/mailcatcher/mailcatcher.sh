yum install -y sqllite-devel
curl -L get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 1.9.3
rvm use 1.9.3 --default
gem install mailcatcher --verbose
mailcatcher --ip=0.0.0.0
sed -i 's/sendmail_path = \/usr\/sbin\/sendmail -t -i/sendmail_path = \/usr\/bin\/env catchmail/g' '/etc/php.ini'
