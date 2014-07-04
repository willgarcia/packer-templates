README
======

packer-templates
----------------

Development boxes built on packer.

Prerequisites
-------------

* Vagrant >= 1.6.2
* Virtualbox >= 4.3.10
* Packer >= 0.5.2

Template CentOS
---------------

This template provides:

* a minimal 64-bit CentOS 6.5

Build:
```shell
$ make centos65-vbox
```

Template CentOS / Jenkins
-------------------------

This template provides:

* a minimal 64-bit CentOS 6.5
* Java JDK 1.8 / 1.7
* Jenkins (latest version)

Build:
```shell
$ make jenkins-vbox
```

See details [here](jenkins/README.md)

Template CentOS / Sonarqube
---------------------------

This template provides:

* a minimal 64-bit CentOS 6.5
* Java JDK 1.8 / 1.7
* Sonarqube (latest version)

Build:
```shell
$ make sonar-vbox
```

See details [here](sonar/README.md)

Template CentOS / Devtools
--------------------------

This template provides:

* a minimal 64-bit CentOS 6.5
* Git
* Grunt
* Mailcatcher
* PHP 5.6 + Composer PHP
* Zsh

Build:
```shell
$ make devtools-vbox
```

See details [here](devtools/README.md)
