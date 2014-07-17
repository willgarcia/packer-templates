Template CentOS / Jenkins
=========================

This template provides:

* a minimal 64-bit CentOS 6.5
* Java JDK 1.8 / 1.7
* Jenkins (latest version)

Build
-----

```shell
$ make jenkins-vbox
```

Edit `variables.json` to customize the box.

Usage
-----

```shell
$ vagrant init wgarcia/centos65-jenkins
```

Port forwarding:

Edit the generated `Vagrantfile` to enable port forwarding on 8080

```ruby
config.vm.network "forwarded_port", guest: 8080, host: 8080
```

Access to Jenkins via this URL: `http://localhost:8080/`
