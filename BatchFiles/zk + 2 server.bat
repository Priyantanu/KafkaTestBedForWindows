@echo off
cd %KAFKAPATH%
START zookeeper-server-start.bat ..\..\config\zookeeper.properties
timeout 5
START kafka-server-start.bat ..\..\config\server0.properties
timeout 5
START kafka-server-start.bat ..\..\config\server1.properties