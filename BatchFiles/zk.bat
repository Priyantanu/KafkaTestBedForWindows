@echo off
cd %KAFKAPATH%
START zookeeper-server-start.bat ..\..\config\zookeeper.properties