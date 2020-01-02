@echo off
cd %KAFKAPATH%
START kafka-server-start.bat ..\..\config\server0.properties
START kafka-server-start.bat ..\..\config\server1.properties