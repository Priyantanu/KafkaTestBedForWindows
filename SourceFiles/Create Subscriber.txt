@echo off
set frombeginning=y
For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="topicname" set topicname=%%B
    IF "%%A"=="bootstrap-server" set bootstrap-server=%%B
    IF "%%A"=="groupname" set groupname=%%B
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
TITLE CONSUMER: %topicname%, %groupname%, %bootstrap-server%, 
set /p frombeginning=Enter frombeginning [y/n](default - %frombeginning%):
if %frombeginning%==y (%KAFKAPATH%\kafka-console-consumer.bat  --bootstrap-server %bootstrap-server% --topic %topicname% --group %groupname% --from-beginning) else (%KAFKAPATH%\kafka-console-consumer.bat  --bootstrap-server %bootstrap-server% --topic %topicname% --group %groupname%)