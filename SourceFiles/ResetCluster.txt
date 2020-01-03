@echo off
TITLE RESET CLUSTER
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
del /s /f /q cd %KAFKAPATH%\..\..\data\*.*
cd %KAFKAPATH%\..\..\logs
del *.*