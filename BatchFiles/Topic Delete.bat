@echo off
cd %KAFKAPATH%
set topicname=kick
set zookeeper=localhost:2181
set /p topicname=Enter topicname (default - %topicname%):
set /p zookeeper=Enter zookeeper (default - %zookeeper%):
FOR /L %%A IN (1,1,1) DO (
 kafka-topics.bat --zookeeper %zookeeper% --delete --topic %topicname%
  pause
)