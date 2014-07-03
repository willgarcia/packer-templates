mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

echo "UseDNS no" >> /etc/ssh/sshd_config
echo "GSSAPIAuthentication no" >> /etc/ssh/sshd_config
