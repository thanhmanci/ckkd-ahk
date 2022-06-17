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
      If (skillType = 0) and colorCompare.CompareAtPos(1668, 1120, "0xFBFAFD") {
        skillType = 1
        doneSkillDelay = 3800
      }

      ; Trượng Uy Hám Viễn Sơn CD
      If (skillType = 0) and colorCompare.CompareAtPos(1708, 1120, "0x607DE0") {
        skillType = 2
        doneSkillDelay = 3600
      }

      ; Trượng Uy Hám Đạp Bình Xuyên CD
      If (skillType = 0) and colorCompare.CompareAtPos(1737, 1121, "0x93C3EF") {
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

      If (colorCompare.CompareAtPos(1667, 1153, "0xEFF8FF")) {
        Send rrr
        Send gg
      }

      doneSkillDelay = 0
      SetToolTip(skillType)

    }

  }
  ToggleCheck = OFF
  ; SetToolTip(ToggleCheck)
Return

~RButton::8
WinGetActiveTitle, Title
isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
If ((ToggleCheck = "ON") && isgameActive) {
  Send {F2}{F2}
  Send xx
}
Return

~F1::
  Sleep, 100
  Send xxxx
Return

^!x::
  ; SetToolTip("")
ExitApp
Return
