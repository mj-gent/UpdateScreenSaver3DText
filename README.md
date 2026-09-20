# mj-gent/UpdateScreenSaver3DText - README

(See download and use information in [Releases](https://github.com/mj-gent/UpdateScreenSaver3DText/releases))

This script will perform a registry edit that updates the text of the
default Microsoft screen saver named '3D Text'.
Text will be pulled from a .txt file that is formatted so that 
PowerShell will interpret it as a list/array. There is no weight for 
selections, just `Get-Random` and an `if` statement that will
prevent the same choice from occurring twice in a row. 
Separately, Windows Task Scheduler can automatically run this script daily.

**NOTE:** Windows '3D Text' screen saver innately has 20-character limit, and
         will display "Windows 11" as a system default if exceeded.
         This script truncates .txt entries that are too long.

Goal for final version is to make this a simple, single installer.
