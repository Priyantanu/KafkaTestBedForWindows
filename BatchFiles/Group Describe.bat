@echo off
cd %KAFKAPATH%
set GroupName=kickgroup
set bootstrap-server=localhost:9092
set DelayForResults=5
set RegularTimeInterval=y
set /p GroupName=Enter GroupName (default - %GroupName%):
set /p bootstrap-server=Enter bootstrap-server (default - %bootstrap-server%):
set /p RegularTimeInterval=Want to See data @ RegularTimeIntervals[y/n] (default - %RegularTimeInterval%):
if %RegularTimeInterval%==y set /p DelayForResults=Enter DelayForResults(seconds) (default - %DelayForResults%):
FOR /L %%A IN (1,1,200) DO (
  kafka-consumer-groups.bat --bootstrap-server %bootstrap-server% --describe --group %GroupName%
  if %RegularTimeInterval%==y (timeout /t %DelayForResults%) else (PAUSE)
)