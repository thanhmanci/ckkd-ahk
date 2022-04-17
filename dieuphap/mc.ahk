#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
    Run *RunAs "%A_ScriptFullPath%" ;

ToggleCheck = OFF
Counter := 0
FirstRunTime := 0
; SetToolTip(ToggleCheck)

~LButton::
    FirstRunTime = 0
    WinGetActiveTitle, Title
    isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
    ToggleCheck = ON
    ; SetToolTip(ToggleCheck)
    T := A_TickCount
    while GetKeyState("LButton") && isgameActive {
        If ((A_TickCount - T) > 500){
            If (FirstRunTime = 0) {
                Sleep, 4480
            }
            FirstRunTime +=1
            Counter += 1
            If (Counter = 2){
                Send {F9}
                Sleep, 1150*2
                Counter = 0
            }
        }
    }
    ToggleCheck = OFF
    ; SetToolTip(ToggleCheck)
    FirstRunTime = 0
Return

`::
    Send, 1111111111
    Sleep, 800
    Send, 2222222222
    Sleep, 1150
    Send, 333
Return

^!x::
    ; SetToolTip("")
ExitApp
Return
