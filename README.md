# A Dockerfile to build openstackclient

# How to use

```bash
docker  run --rm  -v `pwd`/admin-openrc.sh:/root/admin-openrc.sh krystism/openstackclient nova list
```
or

```bash
docker run --rm -e OS_USERNAME=admin -e OS_PASSWORD=ADMIN_PASS krystism/openstackclient nova list
```

or

```bash
docker run --rm -ti krystism/openstackclient bash
```
