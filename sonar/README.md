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
$ vagrant up
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

URL: `http://localhost:2280/`
