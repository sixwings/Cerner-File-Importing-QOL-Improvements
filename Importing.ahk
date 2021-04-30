#NoEnv  ; Recommended for performance and compatibility with future releases
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Hotstring("::ty", "Thank You")
Hotstring(":*:yw", "You're Welcome")

!1::
InputBox, LFname, Enter patients last and first name
InputBox, DOB, DOB
Clipboard := LFname

Hotstring(":*:dob", DOB)
Hotstring(":*:pname", LFname)
Return



;Basic file importing function

!2::
Click, 69, 350
Sleep, 900
Click, 257, 211
Sleep, 1300
Click, 85, 110
Sleep, 100
Send SRHC MEMC_ ;Specifify location and description here
Sleep, 500
Click, 1562,1015 ;Import button
Sleep, 1400

Click, 810,481 ; Switching to all filetypes
Sleep 800
Send a
Sleep 800
Send {enter}
Sleep 900

Click, 253,177 ; Selecting the most recently added file
Click, 253,177
Return

;Closing patients chart, moving document to completed folder, and opening the next document for importing
!3::

Click, 1500, 1019
Sleep 500
Send {Alt down}{F4}{Alt up} ;Closing Chart
Sleep, 1000
WinActivate, ahk_class AcrobatSDIWindow
Sleep, 1000
Send {Alt down}{F4}{Alt up}
Sleep 300
Click 91, 1051
Sleep 340


Return

;Importing Documents into Cerner and automating the import process
;ahk_class Transparent Windows Client
;ahk_exe WFICA32.EXE
;WinActivate, *PowerChart Organizer for Risk, Christopher
;WinActivate, ahk_exe C:\Program Files(x86)\Citrix\ICA Client\WFICA32.EXE
;C:\Program Files (x86)\Citrix\ICA Client
;WinActivate, *PowerChart Organizer for Risk, Christopher
;WinActivate, ahk_class AcrobatSDIWindow