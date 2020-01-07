@echo off
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="topicname" set topicname=%%B
    IF "%%A"=="zookeeper" set zookeeper=%%B
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
cd %KAFKAPATH%
TITLE TOPIC DESCRIBE %topicname%, %zookeeper%
set /p topicname=Enter topicname (default - %topicname%):
FOR /L %%A IN (1,1,200) DO (
  kafka-topics.bat --zookeeper %zookeeper% --describe --topic %topicname%
  pause
)