FROM krystism/base
MAINTAINER krystism "krystism@gmail.com"
# To enable the OpenStack repository
RUN apt-get -y install python-software-properties
RUN echo "deb http://ubuntu-cloud.archive.canonical.com/ubuntu trusty-updates/juno main" > /etc/apt/sources.list.d/ubuntu-cloud-archive-juno-trusty.list
RUN apt-get -y install ubuntu-cloud-keyring
RUN apt-get -y update

# Ensure the package is latest
RUN apt-get -y dist-upgrade

# To install openstackclient
RUN apt-get -y install python-keystoneclient
RUN apt-get -y install python-glanceclient
RUN apt-get -y install python-novaclient
RUN apt-get -y install python-neutronclient
RUN apt-get -y install python-cinderclient
RUN apt-get -y install python-heatclient
RUN apt-get -y install python-ceilometerclient
RUN apt-get -y install python-troveclient
RUN apt-get -y install python-saharaclient
RUN apt-get -y install python-swiftclient

# Set work dir
WORKDIR /root
# Create OpenStack client environment
COPY admin-openrc.sh /root/admin-openrc.sh
RUN chmod a+x /root/admin-openrc.sh
# Create bootstrap script
COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh
RUN chmod +x /etc/bootstrap.sh
ENTRYPOINT ["/etc/bootstrap.sh"]
