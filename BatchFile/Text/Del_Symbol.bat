@Echo Off&SetLocal ENABLEDELAYEDEXPANSION
FOR %%a in (*) do (
set "name=%%a"
echo ===============================================
echo before�� %%a
:English characters
set "name=!name:(=!"
set "name=!name:)=!"
set "name=!name:,=!"
set "name=!name:+=!"
set "name=!name:-=!"
:Chinese characters
set "name=!name:��=!"
set "name=!name:��=!"
set "name=!name:��=!"
set "name=!name:��=!"
set "name=!name:��=!"
:set "name=!name:=��!"
ren "%%a" "!name!"
:color 0a
echo after�� !name!
echo ===============================================
)
echo Well done!
pause