@echo off
set GroupName=kickgroup
set bootstrap-server=localhost:9092
set DelayForResults=5
set RegularTimeInterval=y
set /p RegularTimeInterval=Want to See data @ RegularTimeIntervals[y/n] (default - %RegularTimeInterval%):
if %RegularTimeInterval%==y set /p DelayForResults=Enter DelayForResults(seconds) (default - %DelayForResults%):

For /F "tokens=1* delims==" %%A IN (cluster.properties) DO (
    IF "%%A"=="bootstrap-server" set bootstrap-server=%%B
    IF "%%A"=="groupname" set GroupName=%%B
    IF "%%A"=="KAFKAPATH" set KAFKAPATH=%%B
)
TITLE DESCRIBE GROUP: %groupname%, %bootstrap-server%
set /p groupname=Enter groupname (default - %groupname%):
cd %KAFKAPATH%
FOR /L %%A IN (1,1,200) DO (
  kafka-consumer-groups.bat --bootstrap-server %bootstrap-server% --describe --group %GroupName%
  @echo off
  if %RegularTimeInterval%==y (timeout /t %DelayForResults%) else (PAUSE)
)