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

Edit `variables.json` to customize the box.

Usage:
```shell
$ vagrant up
```

UI
--

* Guest port: 8080

URL: `http://localhost:2280/`
