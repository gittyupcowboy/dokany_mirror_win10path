@REM IF admin account = DokanMirror 
@REM AND <file location> = c:\mirror\mirror.exe
@REM AND network PC = remotepc
@REM AND remote folder = remotefolder
@REM AND Drive leter = M
@REM THEN your mirror commands would look like line 14 below:
@REM I added a timeout due to an issue on my test
@REM machine where mirror had crashed but the OS was
@REM reporting the drive still attached and the  
@REM drive letter could not be assigned causing a broken loop.

:start
timeout 1 > null
C:\mirror\mirror.exe -r \\remotepc\remotefolder -l M
GOTO start