@ECHO OFF
cd %~dp1
ECHO Compiling %~nx1.......
IF EXIST %~n1.class (
DEL %~n1.class
)
javac -J-Duser.country=US -encoding utf-8 %~nx1
IF EXIST %~n1.class (
ECHO -----------OUTPUT-----------
java -Duser.country=US %~n1
)