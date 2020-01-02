@echo off
del /s /f /q cd %KAFKAPATH%\..\..\data\*.*
cd %KAFKAPATH%\..\..\logs
del *.*