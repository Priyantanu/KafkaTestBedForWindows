@echo off
xcopy /s ..\PropertiesFiles\*.* %KAFKAPATH%\..\..\config
PAUSE