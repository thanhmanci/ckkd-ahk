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

~LButton::
  Sleep, 500
  SendMode, Event
  isgameActive := colorCompare.CompareAtPos(172, 233, "0x43372B")
  If (!isgameActive){
    Return
  }
  SetToolTip("Running")
  while GetKeyState("LButton") {
    If !colorCompare.CompareAtPos(861, 236, "0x6B82FB") and colorCompare.CompareAtPos(1427, 1370, "0xA2DAF9") {
      Send 8888888888
    }
    If colorCompare.CompareAtPos(1233, 1381, "0xD2FBFA") {
      Send `````
    }

  }
Return

~RButton::
  isgameActive := colorCompare.CompareAtPos(172, 233, "0x43372B")
  if !isGameActive
    Return
  SetToolTip("RButton")

  if colorCompare.CompareAtPos(1419, 1381, "0xE1DEFF") or colorCompare.CompareAtPos(1416, 1380, "0x989DA6") 
    Return
  If colorCompare.CompareAtPos(1520, 1379, "0xFEFEFE") {
    Send 11111111111111111111111111111111111111111111
    Return
  }
  If colorCompare.CompareAtPos(1568, 1369, "0x8BB1EB") {
    Send 22222222222222222222222222222222222222222222
    Return
  }
  If colorCompare.CompareAtPos(1615, 1370, "0xD1DEF7") {
    Send 33333333333333333333333333333333333333333333
    Return
  }
Return

~`::
  WinGetActiveTitle, Title
  Send {F1}v{F1}v{F1}v{F1}v{F1}v{F1}vrrrrrrrrrrrr
  Send {F1}v{F1}vrrrrrrrrrrrrrrrrr
Return

~^s::
  Send +!f
  Run *RunAs "%A_ScriptFullPath%" 
Return

^!x::
  ; SetToolTip("")
ExitApp
Return
