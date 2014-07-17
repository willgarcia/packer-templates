centos65-vbox:
	packer build \
				--force \
				-var-file=devtools/variables.json  \
				--only 'virtualbox-builder'  \
				centos65/centos65-vbox.json

devtools-vbox: ruby2
	packer build \
				--force \
				-var-file=devtools/variables.json  \
				--only 'virtualbox-builder'  \
				devtools/devtools-vbox.json

sonar-vbox: jdk8
	packer build \
				--force \
				-var-file=sonar/variables.json  \
				--only 'virtualbox-builder'  \
				sonar/sonar-vbox.json

jenkins-vbox: jdk8
	packer build \
				--force \
				--only 'virtualbox-builder'  \
				-var-file=jenkins/variables.json  \
				jenkins/jenkins-vbox.json

jdk8:
	if [ ! -f "resources/jdk-8-linux-x64.rpm" ]; then wget --no-cookies \
	--no-check-certificate \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	"http://download.oracle.com/otn-pub/java/jdk/8-b132/jdk-8-linux-x64.rpm" \
	-O resources/jdk-8-linux-x64.rpm; fi;

jdk7:
	if [ ! -f "resources/jdk-7-linux-x64.rpm" ]; then wget --no-cookies \
	--no-check-certificate \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	"http://edelivery.oracle.com/otn-pub/java/jdk/7u55-b13/jdk-7u55-linux-x64.rpm" \
	-O resources/jdk-7-linux-x64.rpm; fi;

jdk6:
	if [ ! -f "resources/ruby-2.1.2.tar.gz" ]; then wget --no-cookies \
	--no-check-certificate \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	"http://download.oracle.com/otn/java/jdk/6u45-b06/jdk-6u45-linux-x64-rpm.bin" \
	-O resources/jdk-6u45-linux-x64-rpm.bin; fi;

ruby2:
	if [ ! -f "resources/ruby-2.1.2.tar.gz" ]; then wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz \
	-O resources/ruby-2.1.2.tar.gz; fi;

.PHONY: jdk6 jdk7 jdk8 jenkins-vbox ruby2 sonar-vbox devtools-vbox jenkins-vbox centos65-vbox
