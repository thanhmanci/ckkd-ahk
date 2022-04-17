#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\colorcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\drawImg.ahk
#SingleInstance, Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%" ;

ToggleCheck = OFF
; SetToolTip(ToggleCheck)
SetKeyDelay, 300, 300
skillType := 0
~LButton::
  skillType = 0
  WinGetActiveTitle, Title
  SendMode, Event
  isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
  ToggleCheck = ON
  ; SetToolTip(ToggleCheck)
  T := A_TickCount
  doneSkillDelay := 0
  while GetKeyState("LButton") && isgameActive {
    doneSkillDelay = 0
    SetToolTip(doneSkillDelay)
    If ((A_TickCount - T) > 500){

      ; Trượng Uy CD
      If (skillType = 0) and colorCompare.CompareAtPos(1785, 1355, "0x9FCFF9") {
        skillType = 1
        doneSkillDelay = 3800
      }

      ; Trượng Uy Hám Viễn Sơn CD
      If (skillType = 0) and colorCompare.CompareAtPos(1823, 1349, "0xABBCE5") {
        skillType = 2
        doneSkillDelay = 3600
      }

      ; Trượng Uy Hám Đạp Bình Xuyên CD
      If (skillType = 0) and colorCompare.CompareAtPos(1859, 1355, "0xF8FAFF") {
        skillType = 3
        doneSkillDelay = 3600
      }

      If (skillType != 0) {
        Send %skillType%
        ; Bách Chiến Long Hồn
        ; Thương Long Phá biến Chiêu
        SetToolTip(doneSkillDelay)
        Sleep, %doneSkillDelay%
        SetToolTip(doneSkillDelay)
        Send 88
        skillType = 0
      }
      doneSkillDelay = 0
      SetToolTip(doneSkillDelay)

    }

  }
  ToggleCheck = OFF
  ; SetToolTip(ToggleCheck)
Return
^!x::
  ; SetToolTip("")
ExitApp
Return
