@echo off
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="zookeeper" set zookeeper=%%B
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
set topicname=kick
set /p topicname=Enter topicname (default - %topicname%):
TITLE DELETE TOPIC %topicname%
FOR /L %%A IN (1,1,1) DO (
 %KAFKAPATH%\kafka-topics.bat --zookeeper %zookeeper% --delete --topic %topicname%
  pause
)