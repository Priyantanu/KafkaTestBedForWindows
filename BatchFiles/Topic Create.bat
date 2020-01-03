@echo off
cd %KAFKAPATH%
set topicname=kick
set partitions=5
set zookeeper=localhost:2181
set replication-factor=1
set /p topicname=Enter topicname (default - %topicname%):
set /p partitions=Enter groupname (default - %partitions%):
set /p zookeeper=Enter zookeeper (default - %zookeeper%):
set /p replication-factor=Enter replication-factor (default - %replication-factor%):
FOR /L %%A IN (1,1,1) DO (
  kafka-topics.bat --zookeeper %zookeeper% --create --topic %topicname% --partitions %partitions% --replication-factor %replication-factor%
  pause
)