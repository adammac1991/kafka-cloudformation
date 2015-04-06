
cd kafka_2.10-0.8.2.1

LAST_OCTET=`ifconfig|grep inet|grep addr|grep -v 127.0.0.1|awk '{print $2}'|awk -F. '{print $NF}'`
sed -i "s/broker.id=0/broker.id=$LAST_OCTET/" config/server.properties

export KAFKA_HEAP_OPTS="-Xmx256M -Xms256M"

bin/zookeeper-server-start.sh config/zookeeper.properties & 
bin/kafka-server-start.sh config/server.properties &


bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 1 --topic logging


