Preferences
===========
```Preferences.sublime-settings```

    {
        "font_size": 11.0,
        "tab_size": 4,
        "translate_tabs_to_spaces": true,
        "trim_trailing_white_space_on_save": true,
        "shift_tab_unindent": true,
        "rulers": [80]
    }



Plugin
======
Package Control

- SublimeLinter           v
- DocBlockr               v
- PythonTidy
- SideBarEnhancements     v
- MarkdownPreview         v
- Emmet                   v
- Git                     v
- <del>CTag</del>
- Sublime CodeIntel       v

- Sublime Web Inspector
- Flatland


SublimeLinter
=============
    "sublimelinter_syntax_map":
    {
        "java": "javac -XLint",
        "C++": "c_cpplint",
        "C": "c_cpplint"
    },
    "sublimelinter_executable_map":
    {
        "c_cpplint": "D:/Develop/dotfile/sublime/cpplint.py"
    }



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
