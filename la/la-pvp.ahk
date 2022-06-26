#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\colorcompare.ahk
#SingleInstance, Force
; #MaxThreadsPerHotkey 2

SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%" ;

PVE_mode := "DPS"
SetToolTip(PVE_mode)
SetKeyDelay, 0, 0

~LButton::
  WinGetActiveTitle, Title
  SendMode, Event
  SetToolTip(PVE_mode)
  while GetKeyState("LButton"){
    isgameActive := True
    If (!isgameActive){
      Continue
    }

    If (PVE_mode = "DPS"){
      If colorCompare.CompareAtPos(1767, 1002, "0xE6C73D") or colorCompare.CompareAtPos(1474, 1315, "0xD9FFFD") {
        Send 3333
      }
      SetKeyDelay, 50, 500
      Send {F12}{F12}
      SetKeyDelay, 0, 0
      If colorCompare.CompareAtPos(1282, 1324, "0xF6FFFF") {
        Send ```33
      }
    } Else If (PVE_mode = "TANK") {
      Send {F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}
      if colorCompare.CompareAtPos(1767, 1002, "0xE6C73D"){
        Send 3
      }
    }
  }
  SetToolTip(PVE_mode)
Return

~RButton::
  isgameActive := True
  If (!isgameActive){
    Return
  }
  If ((PVE_mode = "TANK")) {
    Send rr{F2}{F2}
  } Else {
    If (isgameActive) {
      Send 1111111
      Sleep, 100
      Send `````````````````
    }
  }
Return

~r::
  WinGetActiveTitle, Title
  isgameActive := True
  If (!isgameActive){
    Return
  }
  If ((PVE_mode = "TANK")) {
    Sleep, 1300
    Send g
  }
Return

^Space::
  If ((PVE_mode = "DPS")) {
    PVE_mode = TANK
    SetToolTip(PVE_mode)
  } Else {
    PVE_mode = DPS
    SetToolTip(PVE_mode)
  }
Return

~^s::
  Send +!f
  Run *RunAs "%A_ScriptFullPath%" 
Return

^!x::
  SetToolTip("Exit")
ExitApp
Return

Shift & RButton::
  Send, f
  Sleep, 100
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send, f
  Sleep, 10
  Send {Click 1720 1415 Left}
Return
