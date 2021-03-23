# Dokany Mirror Win10 Long Path Enabled

## Source files
Built from [Dokany Master Branch/Release 1.4.1.1000 on 2015-03-15](https://github.com/dokan-dev/dokany).  

No guarantees, promises or warranties included.  I am not responsible for data loss or destruction. Proceed as your own risk.

Based on user adfgkljnsdfopgijop's Reddit post: [Backblaze with NAS (step by step guide)](https://old.reddit.com/r/DataHoarder/comments/bwm1j6/backblaze_with_nas_step_by_step_guide).

1. [Enable Windows 10 paths over 260 characters](https://www.howtogeek.com/266621/how-to-make-windows-10-accept-file-paths-over-260-characters).
2. Install [Dokany v1.4.1.1000](https://github.com/dokan-dev/dokany/releases/tag/v1.4.1.1000).
3. Download mirror.exe release from [here](https://github.com/gittyupcowboy/dokany_mirror_win10path/releases). 
4. Copy to c:\mirror\ (or another location of your choice).
5. Modify mirror.bat in this repo as needed.  I removed write protection as suggested by the Reddit post, as Backblaze got a bit upity about not being able to read/write to .bzvol (your milage may vary). 
    
    ```
    @REM Anytime mirror.exe crashes this will execute the mirror command. 
    @REM IF <mirror location> = c:\mirror\mirror.exe
    @REM AND network PC = remotepc
    @REM AND remote folder = remotefolder
    @REM AND Drive leter = M
    @REM THEN your script would look like the below:

    :start
    C:\mirror\mirror.exe -r \\remotepc\remotefolder -l M 
    GOTO start 
    ```
6. Run mirror.bat from an elevated command prompt.