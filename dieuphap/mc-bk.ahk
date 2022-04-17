#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#SingleInstance Force
ToggleCheck = OFF
SetToolTip(ToggleCheck)

~LButton::
    WinGetActiveTitle, Title
    isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
    while GetKeyState("LButton") && (ToggleCheck = "ON") && isgameActive {
        Sleep, 1200
        Send {F9}
    }
Return

~RButton::
    SetKeyDelay, 100, 0
    WinGetActiveTitle, Title
    isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
    If ((ToggleCheck = "ON") && isgameActive) {
        Loop, 5
            Send, 2
    }
Return

CapsLock::
    WinGetActiveTitle, Title
    isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
    If (ToggleCheck = "ON" && isgameActive) {
        ToggleCheck = OFF
    }
    Else {
        ToggleCheck = ON
    }
    SetToolTip(ToggleCheck)
Return

+esc::
    SetToolTip("")
ExitApp