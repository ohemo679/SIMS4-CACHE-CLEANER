@echo off

setlocal enabledelayedexpansion

set "folder=C:\Users\%USERNAME%\Documents\Electronic Arts\The Sims 4"
set "file1=avatarcache.package"
set "file2=localthumbcache.package"

set "found1="
set "found2="

for /r "%folder%" %%f in (*) do (
    if /i "%%~nxf"=="%file1%" (
        set "found1=%%~ff"
    ) else if /i "%%~nxf"=="%file2%" (
        set "found2=%%~ff"
    )
)

if defined found1 (
    echo Found file: %found1%
    del "%found1%"
) else (
    echo File not found: %file1%
)

if defined found2 (
    echo Found file: %found2%
    del "%found2%"
) else (
    echo File not found: %file2%
)

