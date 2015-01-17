# A Dockerfile to build openstackclient image

# How to build

```
docker build --rm -t="krystism/openstackclient"
```

# How to use

```
docker run --rm\
	-e OS_USERNAME=admin \
	-e OS_PASSWORD=ADMIN_PASS \
	-e OS_AUTH_URL=http://keystone:5000/v2.0 \
	-e OS_TENANT_NAME=admin \
	krystism/openstackclient nova list
```

or

```
docker run \ 
	-t -i --rm=true \ 
	-v `pwd`/admin-openrc.sh:/root/admin-openrc.sh \
	krystism/openstackclient bash
source /root/admin-openrc.sh
nova list
```
