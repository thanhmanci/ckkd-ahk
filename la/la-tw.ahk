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
    isgameActive := colorCompare.isgameActive(96, 237, "0x31453B")
    If (!isgameActive){
      Continue
    }

    If (PVE_mode = "DPS"){
      If colorCompare.CompareAtPos(1753, 959, "0xAD721E") or colorCompare.CompareAtPos(1525, 1371, "0xDAFDFD") {
        Send 3333
      }
      Send {F12}{F12}{F12}{F12}{F12}{F12}
      If colorCompare.CompareAtPos(1378, 1383, "0x0FE0FF") {
        Send ```33
      }
      Send cccccc
    } Else If (PVE_mode = "TANK") {
      Send {F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}
      if colorCompare.CompareAtPos(1753, 959, "0xAD721E"){
        Send 3
      }
    }
  }
  SetToolTip(PVE_mode)
Return

~RButton::
  WinGetActiveTitle, Title
  isgameActive := colorCompare.isgameActive(96, 237, "0x31453B")
  If ((PVE_mode = "TANK") && isgameActive) {
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
  isgameActive := colorCompare.isgameActive(96, 237, "0x31453B")
  If ((PVE_mode = "TANK") && isgameActive) {
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
