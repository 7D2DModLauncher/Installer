#SingleInstance ignore

; Only run if 7DaysToDie.exe is enabled.
#IfWinActive ahk_exe 7DaysToDie.exe

DELAY=100
ZGATE1=""
ZGATE2=""
ZGATE3=""

; sends you home when you hit F1
F1::
   Send t
   sleep %DELAY%
   Send /home
   sleep %DELAY%
   Send {Enter}
Return

; Shift-F1 will delete your old home, and set a new home location
$~+F1::
   Send t
   sleep %DELAY%
   Send /delhome
   sleep %DELAY%
   Send {Enter}
   Send t
   Send /sethome
   sleep %DELAY%
   Send {Enter}
Return

; Takes you to spawn
F2::
   Send t
   sleep %DELAY%
   Send /spawn
   sleep %DELAY%
   Send {Enter}
Return

; Takes you to your first zgate
F3::
   Send t
   sleep %DELAY%
   Send /zgate visit %ZGATE1%
   sleep %DELAY%
   Send {Enter}
Return

$~+F3::
   Send t
   sleep %DELAY%
   Send /zgate delete %ZGATE1%
   sleep %DELAY%
   Send {Enter}
   Send /zgate create %ZGATE1%
   sleep %DELAY%
   Send {Enter}
   Send /zgate toggle %ZGATE1%
   sleep %DELAY%
   Send {Enter}
Return

; Takes you to your first zgate
F4::
   Send t
   sleep %DELAY%
   Send /zgate visit %ZGATE2%
   sleep %DELAY%
   Send {Enter}
Return

$~+F4::
   Send t
   sleep %DELAY%
   Send /zgate delete %ZGATE2%
   sleep %DELAY%
   Send {Enter}
   Send /zgate create %ZGATE2%
   sleep %DELAY%
   Send {Enter}
   Send /zgate toggle %ZGATE2%
   sleep %DELAY%
   Send {Enter}
Return

; Takes you to your first zgate
F5::
   Send t
   sleep %DELAY%
   Send /zgate visit %ZGATE3%
   sleep %DELAY%
   Send {Enter}
Return

$~+F5::
   Send t
   sleep %DELAY%
   Send /zgate delete %ZGATE3%
   sleep %DELAY%
   Send {Enter}
   Send /zgate create %ZGATE3%
   sleep %DELAY%
   Send {Enter}
   Send /zgate toggle %ZGATE3%
   sleep %DELAY%
   Send {Enter}
Return

#IfWinActive