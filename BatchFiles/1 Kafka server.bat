@echo off
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
START %KAFKAPATH%\kafka-server-start.bat %KAFKAPATH%\..\..\config\server0.properties