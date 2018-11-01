@echo off
set SRC=%1
set ORG=%~n1.org%~x1
copy /y %1 %ORG%
ffmpeg -y -i %ORG% -ar 16000 -ab 48k -codec:a libmp3lame -ac 1 %SRC%
pause