FROM ubuntu:14.04
MAINTAINER krystism "krystism@gmail.com"
# To enable the OpenStack repository
RUN set -x \
	&& echo "deb http://ubuntu-cloud.archive.canonical.com/ubuntu trusty-updates/juno main" > /etc/apt/sources.list.d/openstack.list \
	&& apt-get -qqy update \
	&& apt-get -qqy install ubuntu-cloud-keyring \
	&& apt-get -qqy update \
	&& apt-get -qqy install \
		python-ceilometerclient \
		python-cinderclient \
		python-glanceclient \
		python-heatclient \
		python-keystoneclient \
		python-novaclient \
		python-neutronclient \
		python-saharaclient \
		python-swiftclient \
		python-troveclient
CMD ["bash"]
