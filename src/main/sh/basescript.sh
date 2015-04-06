#!/bin/bash
date > /etc/provisioned.at

# update our servers
apt-get update -y

# install java
sudo apt-add-repository ppa:webupd8team/java -y
sudo apt-get update
sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install oracle-java8-installer -y

# grab kafka, which includes zookeepr
wget 'http://mirror.symnds.com/software/Apache/kafka/0.8.2.1/kafka_2.10-0.8.2.1.tgz'

tar -xzf kafka_2.10-0.8.2.1.tgz


