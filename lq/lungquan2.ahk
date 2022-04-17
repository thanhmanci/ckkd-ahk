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
SetKeyDelay, 100, 300
counter = 0
chuan = 0
ngukiem = 0
~LButton::
  WinGetActiveTitle, Title
  SendMode, Event
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  ToggleCheck = ON
  SetToolTip(ToggleCheck)
  T := A_TickCount
  ; Lung Quan DPS============================================================================================
  while GetKeyState("LButton") && isgameActive {
    If ((A_TickCount - T) > 450){
      ; xxxx
      If (colorCompare.CompareAtPos(1702, 1079, "0x5F5C57"))
      {
        send g
      }

      If (counter = 2) {
        Send 1
        counter = 0
      }

      If (colorCompare.CompareAtPos(1694, 1044, "0xFFFFFF"))
      {
        Sleep, 100
        Send 2
      }

      If (!colorCompare.CompareAtPos(2022, 798, "0xBA815C") && colorCompare.CompareAtPos(1696, 1038, "0xD1C8C8") && counter = 1) 
      {
        Sleep, 100
        Send 2
      }
      counter += 1
      Send r
      If (colorCompare.CompareAtPos(2008, 722, "0xB46090"))
      {
        Sleep, 100
        Send 3
      }
    }
  }
  ToggleCheck = OFF
Return

^!x::
ExitApp
Return
