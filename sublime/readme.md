Plugin
======
Package Control

- SublimeLinter           v
- DocBlockr               v
- PythonTidy
- SideBarEnhancements
- MarkdownPreview         v
- Emmet                   v
- Git
- <del>CTag</del>


Java
====
- http://compilr.org/tuts/compile-and-run-java-programs/
- http://rednaxelafx.iteye.com/blog/696436


### JavaC.sublime-build

    {
        //"cmd": ["javac", "$file"],
        "cmd": ["runJava.bat", "$file"],
        "file_regex": "^(...*?):([0-9]*):?([0-9]*)",
        "selector": "source.java"
    }


### runJava.bat

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

SublimeLinter
=============

    {
        "sublimelinter_executable_map":
        {
            "C": "cppcheck",
            "C++": "cppcheck",
            "Java": "javac -Xlint"
        }
    }