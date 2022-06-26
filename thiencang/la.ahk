#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\colorcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\drawImg.ahk
#SingleInstance, Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%" ;

PVE_mode := "DPS"
ToggleCheck = OFF
SetToolTip(ToggleCheck)
SetKeyDelay, 50, 50

~LButton::
  WinGetActiveTitle, Title
  SendMode, Event
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  ToggleCheck = ON
  ; T := A_TickCount

  while GetKeyState("LButton") && isgameActive {
    onTarget := True
    quatangloan_free := colorCompare.CompareAtPos(1564, 1154, "0xD5FBFF")
    dotkich_free := colorCompare.CompareAtPos(1774, 1309, "0x8FECFF")
    if (!onTarget){
      Continue
    }
    if (quatangloan_free and dotkich_free) {
      Sleep, 50
      Send {F1}
      Sleep, 100
      Send v
      Sleep, 3600
      Send rrr
      Send ```
      SetKeyDelay, 200, 200
      Send ggggg
      SetKeyDelay, 50, 50
    }
  }
  ToggleCheck = OFF
  SetToolTip(ToggleCheck)
Return

~space::
  onTarget := True
  while GetKeyState("space") and isgameActive {
    onTarget := True
    if (!onTarget) {
      Continue
    }
    SetKeyDelay, 10, 10
    Send {F5}
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
  ; SetToolTip("")
ExitApp
Return
