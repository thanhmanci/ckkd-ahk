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
SetKeyDelay, 0, 0

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
      Send {F12}{F12}{F12}{F12}{F12}{F12}{F12}
      ; If colorCompare.CompareAtPos(1743, 1024, "0xD9FFFD") or colorCompare.CompareAtPos(1942, 1105, "0xDEB937") {
      If colorCompare.CompareAtPos(1942, 1105, "0xDEB937") or colorCompare.CompareAtPos(1865, 1165, "0xBCE8F7") {
        Send 3333
      }
      ; If colorCompare.CompareAtPos(1672, 1156, "0x2BEEFF") and !(colorCompare.CompareAtPos(1942, 1105, "0xDEB937")) {
      ;   Send ```
      ; }
    }
  }
  ToggleCheck = OFF
  SetToolTip(ToggleCheck)
Return

~RButton::
  WinGetActiveTitle, Title
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  If ((ToggleCheck = "ON") && isgameActive) {
    Send 1111111
    Sleep, 100
    Send `````````````````
  }
Return

F1::
  WinGetActiveTitle, Title
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  If (isgameActive) {
    Send eeeeee
    Send 3333333
    Send {F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}{F12}
    Send 2
  }
Return

^!x::
  ; SetToolTip("")
ExitApp
Return
