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
SetKeyDelay, 200, 200
counter = 0
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

      If colorCompare.CompareAtPos(1702, 1075, "0x53FBFF") {
        Send g
      }
      If colorCompare.CompareAtPos(2027, 849, "0xF3FEFF") {
        Send 4
        SetToolTip("Con Stack")
      } else {
        SetToolTip("het stack")
        Sleep, 290
        Send 5
        Sleep, 180
        If (!colorCompare.CompareAtPos(2022, 798, "0xBA815C")) {
          Send 2
          Sleep, 10
          Send 3
        }
        If (counter = 2) {
          Send 1
          counter = 0
        }
        counter += 1
        Send r

      }
    }
  }
  ToggleCheck = OFF
  ; SetToolTip(ToggleCheck)
Return


^!x::
  ; SetToolTip("")
ExitApp
Return
