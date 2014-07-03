sed -i 's/sendmail_path = \/usr\/sbin\/sendmail -t -i/sendmail_path = \/usr\/bin\/env catchmail/g' '/etc/php.ini'
