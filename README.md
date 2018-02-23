# IsardVDI Production

## What is needed

1. Linux distro
2. docker & docker-compose


### 1. Linux distro

In theory any distro that can run docker can be used. Some tips:

| Distro | Versions | Status |
| ------ | ------ | ------ |
| Fedora | 25,26,27 | OK (recommended, we use it on production) |
| Debian | 6,7 | OK  |
| Ubuntu | 16.04.3 LTS | OK  |

As we said, any other distro/version with docker should work.

### 2. docker & docker-compose

We provide script to automate docker & docker-compose installation on Fedora.

For other distros, please refer to documentation:

- https://docs.docker.com/install/linux/docker-ce/fedora/
- https://docs.docker.com/install/linux/docker-ce/fedora/
- https://docs.docker.com/install/linux/docker-ce/ubuntu/
- https://docs.docker.com/install/linux/docker-ce/centos/

## Start IsardVDI

As a user with permissions run:

```sh
$ docker-compose up
```

Open browser and connect to https://localhost and a wizard should appear.


## FAQS

#### docker-compose up fails or can't access wizard url.

Check your linux distro selinux. You might temporarily disable it if it is enforcing:

```sh
$ setenforce 0
```

Check your iptables/firewalld. It could be blocking access. You jmight temporarily disable it if it is enforcing.

```sh
$ systemctl stop firewalld
```

