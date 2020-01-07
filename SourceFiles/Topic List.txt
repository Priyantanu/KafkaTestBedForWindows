@echo off
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="zookeeper" set zookeeper=%%B
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
TITLE LIST OF TOPICS
FOR /L %%A IN (1,1,1) DO (
 %KAFKAPATH%\kafka-topics.bat --zookeeper %zookeeper% --list
 pause
)