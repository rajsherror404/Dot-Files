@ECHO OFF

::SET FILEPATH="D:\Code\WPOS\Internal Tools Wpos\internal_tools\Wpos-Refactored\WposCore\UserForms"
SET FILEABSNAME="ResendEmailsForm"
SET FILENAME=%FILEABSNAME%
ECHO %FILENAME%

CALL :delete

CALL :commit

EXIT /B 0

:commit
ECHO "Inside Commit Module"
cvs remove %FILENAME%.cs
cvs remove %FILENAME%.Designer.cs
cvs remove %FILENAME%.resx
cvs commit -m "removed %FILENAME% files"
EXIT /B 0

:: function to the designer,cs and resx files of the given form
:delete
ECHO "Inside delete Module"
if EXIST %FILENAME%.cs del %FILENAME%.cs
if EXIST %FILENAME%.Designer.cs del %FILENAME%.Designer.cs
if EXIST %FILENAME%.resx del %FILENAME%.resx
EXIT /B 0
