@echo off
cd %~dp1

rem Checking fileName.class

if exist %~n1.class (
	rem Removing fileName.class
	del %~n1.class rem if so then delete
)

rem Compiling fileName.clas
javac %~nx1

if exist %~n1.class (
	rem Running fileName.exe
	java %~n1
)