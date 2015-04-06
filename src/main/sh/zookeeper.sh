#!/bin/bash

tar -xzf kafka_2.10-0.8.2.1.tgz

cd kafka_2.10-0.8.2.1

# start zookeepr
bin/zookeeper-server-start.sh config/zookeeper.properties &

