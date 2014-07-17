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

Edit `variables.json` to customize the box.

Usage:
```shell
$ vagrant init wgarcia/centos65-sonar-mysql
```

Port forwarding:

Edit the generated `Vagrantfile` to enable port forwarding on 9000

```ruby
config.vm.network "forwarded_port", guest: 9000, host: 9000
```

Database
--------

H2 / Mysql / Postgres:

* User: `sonar`
* Password: `sonar`
* Database name: `sonar`

Sonar UI
--------

* User: `admin`
* Password: `admin`
* Guest port: 9000

URL: `http://localhost:9000/`
