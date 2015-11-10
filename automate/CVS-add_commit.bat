@ECHO OFF

::SET FILEPATH="D:\Code\WPOS\Internal Tools Wpos\internal_tools\Wpos-Refactored\WposUI\UserForms"
:: cvs dosen't allow absolute path in commit
SET FILEABSNAME="ResendEmailsForm"
SET FILENAME=%FILEABSNAME%
ECHO %FILENAME%

CALL :commit
EXIT /B 0

::function to commit
:commit
ECHO "Inside Commit Module"
cvs add %FILENAME%.cs
cvs add %FILENAME%.Designer.cs
cvs add %FILENAME%.resx
cvs commit -m "add  %FILENAME% files"
ECHO "Exiting Commit Module"
EXIT /B

