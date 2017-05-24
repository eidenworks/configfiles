#!/bin/bash

#set -x

/opt/kafka/bin/kafka-console-consumer.sh --zookeeper 10.10.10.27:2181 --topic ErrorAlertVM | {
	while IFS= read -r line 
	do
		/opt/kafka/telegram-notify.sh --text "$line"
	done 
}
