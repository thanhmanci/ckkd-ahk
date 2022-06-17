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
SetKeyDelay, 0, 0

~LButton::
  WinGetActiveTitle, Title
  SendMode, Event
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  ToggleCheck = ON
  ; T := A_TickCount
  If (ToggleCheck) {
    SetToolTip(PVE_mode)
  } Else {
    SetToolTip("")
  }
  while GetKeyState("LButton") && isgameActive {
    onTarget := colorCompare.CompareAtPos(85, 82, "0xBDEDF9")
    If (PVE_mode = "DPS" and onTarget){
      Send {F12}{F12}{F12}
      If colorCompare.CompareAtPos(1670, 1155, "0xB8FEFF") and colorCompare.CompareAtPos(1699, 1112, "0xDFCEB7") {
        Send ```
      }
      If colorCompare.CompareAtPos(1808, 1116, "0xF3E8F3") {
        Send ```
      }
      If colorCompare.CompareAtPos(1944, 1102, "0xB38125") or colorCompare.CompareAtPos(1739, 1112, "0xDBFFFD") {
        Send 3333
      }
    } Else If (PVE_mode = "TANK" and onTarget) {
      Send {F12}{F12}{F12}
      If not colorCompare.CompareAtPos(1928, 1103, "0x9B5F22") {
        Send 3333
      }
    }
  }
  ToggleCheck = OFF
  SetToolTip(ToggleCheck)
Return

~RButton::
  WinGetActiveTitle, Title
  onTarget := colorCompare.CompareAtPos(85, 82, "0xBDEDF9")
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  If ((ToggleCheck = "ON") and (PVE_mode = "TANK") && isgameActive && onTarget) {
    Send gg{F2}{F2}
  } Else {
    If ((ToggleCheck = "ON") && isgameActive && onTarget) {
      Send 1111111
      Sleep, 100
      Send `````````````````
    }
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

^!x::
  ; SetToolTip("")
ExitApp
Return
