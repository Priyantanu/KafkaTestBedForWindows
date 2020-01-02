@echo off
cd %KAFKAPATH%
set brokerList=localhost:9092
set topicname=kick
set /p topicname=Enter topicname (default - %topicname%):
set /p brokerList=Enter BrokerList(default - %brokerList%):
.\kafka-console-producer.bat --broker-list  %brokerList% --topic %topicname%