# IsardVDI on Alpine Linux (3.8.1)

## Packages
```
apk add docker py-pip
pip install docker-compose
```

## Fix cgroups
```
mkdir -p /sys/fs/cgroup/systemd
echo 'cgroup /sys/fs/cgroup/systemd/ cgroup none,name=systemd' >> /etc/fstab
```
Mount it temporarily
```
mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd/
```

## Clone repo
```
git clone https://github.com/isard-vdi/isard-docker
cd isard-docker
docker-compose up
```
