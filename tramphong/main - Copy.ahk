#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\colorcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\drawImg.ahk
#SingleInstance, Force
#MaxThreadsPerHotkey 1
#MenuMaskKey vk07 ; vk07 is unassigned.
#InstallMouseHook 
#InstallKeybdHook

SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%" ;

~*RButton::
  Send {F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}
~*RButton Up::
  if (GetKeyState("RButton", "P")) {
    Send rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
  } else {
    SetToolTip("On")
    Send 1111111111111111111111111111111111111111111111111111111111111111111111111
  }
Return

~LButton::
  WinGetActiveTitle, Title
  while GetKeyState("LButton", "P") {
    SetToolTip("")
    if colorCompare.CompareAtPos(1604, 1370, "0x99716B") {
      Send 3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e
    }
    Gosub, SendTide 
  }
Return

SendTide:
  Sleep, 1900
  If colorCompare.CompareAtPos(1556, 1357, "0xFAFEFE") {
    Send 11111111111
  }
  If colorCompare.CompareAtPos(1514, 1364, "0xF0F0EA") {
    Send cccccccc
  }
  
return

`::
  WinGetActiveTitle, Title
  Send 45454545454545
Return

~3:: 
  WinGetActiveTitle, Title
  Send 333eeee
Return

~^s::
  Send +!f
  Run *RunAs "%A_ScriptFullPath%" 
Return

^Space::
  SetKeyDelay, 50, 50
  Send 2
  Sleep, 1400
  Send {F12 Down}{F12 Down}{F12 Down}{F12 Down}
  Sleep, 1400
  Send errr{F12 Up}rrrrrrr
  Send cccccccc
  Send 3e3e3e3e
  Send ````````````````
  SetKeyDelay, 0, 0
return

^!x::
  ; SetToolTip("")
ExitApp
Return
