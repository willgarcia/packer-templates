export PACKER_LOG=1
centos65-vbox:
	packer build \
				--force \
				-var-file=devtools/variables.json  \
				--only 'virtualbox-builder'  \
				centos65/centos65-vbox.json

devtools-vbox:
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
	wget --no-cookies \
	--no-check-certificate \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	"http://download.oracle.com/otn/java/jdk/6u45-b06/jdk-6u45-linux-x64-rpm.bin" \
	-O resources/jdk-6u45-linux-x64-rpm.bin

.PHONY: jdk6 jdk7 jdk8 jenkins-vbox sonar-vbox devtools-vbox
