@echo off
cd %KAFKAPATH%
START zookeeper-server-start.bat ..\..\config\zookeeper.properties
timeout 3
START kafka-server-start.bat ..\..\config\server0.properties