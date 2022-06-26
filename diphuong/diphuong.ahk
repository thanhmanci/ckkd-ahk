#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\colorcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\drawImg.ahk
#SingleInstance, Force
#MaxThreadsPerHotkey 1
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%" ;

PVE_mode := "DiPhuong"
ToggleCheck = OFF
SetToolTip(ToggleCheck)
SetKeyDelay, 50, 50
; 1,2,`,r, 3,2222

~LButton::
  WinGetActiveTitle, Title
  SendMode, Event
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  while GetKeyState("LButton") and isgameActive {
    If colorCompare.CompareAtPos(1719, 1090, "0x454240") and PVE_mode = "DiPhuong"{
      Send ```````````````````````````````````
    }
    SetKeyDelay, 100, 400
    Send {F5}
  }
  SetToolTip("OFF")
Return

; ^Space::
;   WinGetActiveTitle, Title
;   SendMode, Event
;   isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
;   if (isgameActive) {
;     SetToolTip("ON")
;     Send 12
;     Send ```````````````````````````````````
;     Send xxx
;     Send rrrrrrrrrrrrrrrrr
;     Send 3232333322222222222222222222222222222222222222222222222222
;   }

; Return

^Space::
  If ((PVE_mode = "DiPhuong")) {
    PVE_mode = TramPhong
    SetToolTip(PVE_mode)
  } Else {
    PVE_mode = DiPhuong
    SetToolTip(PVE_mode)
  }
Return

^!x::
  ; SetToolTip("")
ExitApp
Return
