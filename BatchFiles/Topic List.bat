@echo off
cd %KAFKAPATH%
set zookeeper=localhost:2181
set /p zookeeper=Enter zookeeper (default - %zookeeper%):

FOR /L %%A IN (1,1,1) DO (
 kafka-topics.bat --zookeeper %zookeeper% --list
 pause
)