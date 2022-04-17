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
SetKeyDelay, 80, 100
counter = 0
~LButton::
  WinGetActiveTitle, Title
  SendMode, Event
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  SetToolTip(isgameActive)
  ToggleCheck = ON
  ; SetToolTip(ToggleCheck)
  T := A_TickCount
  while GetKeyState("LButton") {
    If ((A_TickCount - T) > 450){
      If colorCompare.CompareAtPos(2026, 849, "0xF8FDFE") {
        Send 6
        SetToolTip("Stackk")
      } else {
        SetToolTip("Normal")
        Sleep, 470
        Send 7
        Sleep, 450
        If (colorCompare.CompareAtPos(1725, 1030, "0x73FCFF"))
        {
          send 3
        }

        If (counter = 2) {
          Send 1
          counter = 0
        }

        If (colorCompare.CompareAtPos(1773, 1043, "0xF0EDED"))
        {
          Sleep, 100
          Send r
        }
        if (counter = 1)
        {

          If (!colorCompare.CompareAtPos(2022, 798, "0xBA815C") && colorCompare.CompareAtPos(1696, 1038, "0xD1C8C8")) 
          {
            Sleep, 100
            Send r

          }

        }
        counter += 1
        Send e 
        If (colorCompare.CompareAtPos(2008, 722, "0xB46090"))
        {
          Sleep, 100
          Send q

        }

      }
    }
  }
  ; Lung Quan DPS==================================================================================================================
  ToggleCheck = OFF
  ; SetToolTip(ToggleCheck)
Return

^!x::
  ; SetToolTip("")
ExitApp
Return
