@echo off
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
cd %KAFKAPATH%
START kafka-server-start.bat ..\..\config\server0.properties
START kafka-server-start.bat ..\..\config\server1.properties
START kafka-server-start.bat ..\..\config\server2.properties