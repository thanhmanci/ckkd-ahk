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
  Run *RunAs "%A_ScriptFullPath%";

~*RButton::
  isGameActive := colorCompare.isgameActive(171, 236, "0x39574F")
  if !isGameActive
    Return
  Send {F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}
~*RButton Up::
  if !isGameActive
    Return
  if (GetKeyState("RButton")) {
    If colorCompare.CompareAtPos(1437, 1367, "0xFBFFF1") {
      Send rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
    }
  } else {
    SetToolTip("On")
    Send 1111111111111111111111111111111111111111111111111111111111111111111111111
    Gosub, SendTide 
  }
Return

SendTide:
  Sleep, 1700
  If colorCompare.CompareAtPos(1470, 1364, "0xE3EBFD") {
    Send 11111111111
  }
return

`::
  WinGetActiveTitle, Title
  isGameActive := colorCompare.isgameActive(171, 236, "0x39574F")
  if !isGameActive
    Return
  Send 45454545454545
Return

~3:: 
  WinGetActiveTitle, Title
  isGameActive := colorCompare.isgameActive(171, 236, "0x39574F")
  if !isGameActive
    Return
  Send 333eeee
Return

~^s::
  Send +!f
  Run *RunAs "%A_ScriptFullPath%" 
Return

<+LButton::
  SetKeyDelay, 50, 50
  Send 2222
  Sleep, 500
  Send {F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}{F12 Down}
  Sleep, 1200
  Send errrr{F12 Up}rrrrrrrrrrrrrrrrrrrrrr
  Send 3e3e3e3errr
  Send ````````````````
  SetKeyDelay, 0, 0
return

^!x::
  ; SetToolTip("")
ExitApp
Return
