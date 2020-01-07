@echo off
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="zookeeper" set zookeeper=%%B
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
    IF "%%A"=="topicname" set topicname=%%B
)
TITLE TOPIC CREATE
set topicname=%topicname%
set partitions=5
set replication-factor=1
set /p topicname=Enter topicname (default - %topicname%):
set /p partitions=Enter partitions (default - %partitions%):
set /p replication-factor=Enter replication-factor (default - %replication-factor%):
FOR /L %%A IN (1,1,1) DO (
  %KAFKAPATH%\kafka-topics.bat --zookeeper %zookeeper% --create --topic %topicname% --partitions %partitions% --replication-factor %replication-factor%
  pause
)