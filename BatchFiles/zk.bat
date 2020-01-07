@echo off
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
START %KAFKAPATH%\zookeeper-server-start.bat %KAFKAPATH%\..\..\config\zookeeper1.properties