#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\colorcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\drawImg.ahk
#SingleInstance, Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%" ;

ToggleCheck = OFF
SetToolTip(ToggleCheck)
SetKeyDelay, 70, 0

~LButton::
  WinGetActiveTitle, Title
  SendMode, Event
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  ToggleCheck = ON
  SetToolTip(ToggleCheck)
  T := A_TickCount
  while GetKeyState("LButton") && isgameActive {
    ; onTarget := colorCompare.CompareAtPos(1152, 842, "0x3D94B4")
    If ((A_TickCount - T) > 500){
      Send 2222
      Send 3333
      Send rrrr

    ;   If colorCompare.CompareAtPos(2027, 853, "0x9DE1F5") And colorCompare.CompareAtPos(1961, 1007, "0x25243A") {
    ;     Send r
    ;   }
    }
  }
  ToggleCheck = OFF
  SetToolTip(ToggleCheck)
Return

; ~RButton::
;   WinGetActiveTitle, Title
;   isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
;   If ((ToggleCheck = "ON") && isgameActive) {
;     Send 1111111
;     Sleep, 100
;     Send `````````````````
;   }
; Return

F1::
  WinGetActiveTitle, Title
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  If (isgameActive) {
    Send 1
    Send 222222222
    Sleep, 100
    Send 222222222
    Sleep, 100
    Send 222222222
    Sleep, 100
    Send 333333333
    Send xxxxxxxxx
    Send rrrrrrrrr
  }
Return

^!x::
  ; SetToolTip("")
ExitApp
Return
