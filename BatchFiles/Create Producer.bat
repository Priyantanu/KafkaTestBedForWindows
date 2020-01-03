@echo off
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="topicname" set topicname=%%B
    IF "%%A"=="bootstrap-server" set bootstrap-server=%%B
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
TITLE PRODUCER: %topicname%, %bootstrap-server%
%KAFKAPATH%\kafka-console-producer.bat --broker-list  %bootstrap-server% --topic %topicname%