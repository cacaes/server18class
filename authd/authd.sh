#!/bin/sh

#while true; do

cd /root/authd ; java -Dlog4j.configuration=./log4j.properties -jar authd.jar table.xml &

#sleep 10

#done

