@echo off
cd %KAFKAPATH%
START zookeeper-server-start.bat ..\..\config\zookeeper.properties
START kafka-server-start.bat ..\..\config\server0.properties
START kafka-server-start.bat ..\..\config\server1.properties
START kafka-server-start.bat ..\..\config\server2.properties