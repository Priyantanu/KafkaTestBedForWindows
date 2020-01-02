@echo off
cd %KAFKAPATH%
set topicname=kick
set groupname=kickgroup
set bootstrapServer=localhost:9092
set frombeginning=y
set /p topicname=Enter topicname (default - %topicname%):
set /p groupname=Enter groupname (default - %groupname%):
set /p bootstrapServer=Enter bootstrapServer(default - %bootstrapServer%):
set /p frombeginning=Enter frombeginning [y/n](default - %frombeginning%):
if %frombeginning%==y (.\kafka-console-consumer.bat  --bootstrap-server %bootstrapServer% --topic %topicname% --group %groupname% --from-beginning) else (.\kafka-console-consumer.bat  --bootstrap-server %bootstrapServer% --topic %topicname% --group %groupname%)