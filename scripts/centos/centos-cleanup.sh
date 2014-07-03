yum -y clean all

[ -f /root/.bash_history ] && rm -f /root/.bash_history

find /var/log -type f -name "*.log" | while read f; do echo -ne '' > $f; done;

rm /usr/src/* -rf

count=`df --sync -kP / | tail -n1  | awk -F ' ' '{print $4}'`;
count=$((count -= 1))
dd if=/dev/zero of=/tmp/whitespace bs=1024 count=$count;
rm -f /tmp/whitespace;

count=`df --sync -kP /boot | tail -n1 | awk -F ' ' '{print $4}'`;
count=$((count -= 1))
dd if=/dev/zero of=/boot/whitespace bs=1024 count=$count;
rm /boot/whitespace;

rm /tmp/* -rf
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?

rm -f /etc/udev/rules.d/70-persistent-net.rules
if [ -r /etc/sysconfig/network-scripts/ifcfg-eth0 ]; then
  sed -i 's/^HWADDR.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
  sed -i 's/^UUID.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
fi
