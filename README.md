# mj-gent/UpdateScreenSaver3DText - README

This script will perform a registry edit that updates the text of the
default Microsoft screen saver named '3D Text'.
The text will be pulled from a .txt file that is formatted so that 
PowerShell will interpret it as a list/array (delimiter == newline).
No weight for selections, just Get-Random and an 'if' statement that will
prevent the same choice from occurring twice in a row. 
I separately used Windows Task Scheduler to automatically run this script daily.

WARNING: Windows '3D Text' screen saver innately has 20-character limit, and
         will display "Windows 11" as a system default if exceeded. 

Not included in v1.0.0 upload of the script:
* default .txt file
* installer/.exe
