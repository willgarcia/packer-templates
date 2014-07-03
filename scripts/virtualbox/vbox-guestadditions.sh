yum install -y gcc cpp kernel-devel-2.6.32-431.el6.x86_64 kernel-headers perl
mkdir /tmp/vbox
VER=$(cat /home/vagrant/.vbox_version)
mount -o loop /home/vagrant/VBoxGuestAdditions_$VER.iso /tmp/vbox
sh /tmp/vbox/VBoxLinuxAdditions.run
umount /tmp/vbox
rmdir /tmp/vbox
rm /home/vagrant/*.iso
yum remove -y gcc cpp kernel-devel-2.6.32-431.el6.x86_64 kernel-headers perl
