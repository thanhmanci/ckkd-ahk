#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
    Run *RunAs "%A_ScriptFullPath%" ;

SetKeyDelay, 100, 450
ToggleCheck = OFF
Counter := 0
SetToolTip(ToggleCheck)

; ~r::
;     WinGetActiveTitle, Title
;     isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
;     ToggleCheck = ON
;     SetToolTip(ToggleCheck)
;     ; T := A_TickCount

;     Send {`` Up}

; Return
; LButton::
;     Send 1
; Return

~LButton::
    T := A_TickCount

    ; WinGetActiveTitle, Title
    ; isgameActive := stringSimilarity.compareTwoStrings(Title, "Cổ kiếm kỳ đàm Online") = 0.24
    While GetKeyState("LButton"){
        If ((A_TickCount - T) > 500){
            createFile("1.txt", "FREE")
            ; (R-1-R-1-R-R-1-R-R-VLK) X2 - 3 - VLK
            Send {F8}
            If not FileExist("1.txt") {
                Return
            }
            Send 1
            If not FileExist("1.txt") {
                Return
            }
            Send {F8}
            If not FileExist("1.txt") {
                Return
            }
            Send 1
            If not FileExist("1.txt") {
                Return
            }
            Send {F8}
            Send {F8}
            If not FileExist("1.txt") {
                Return
            }
            Send 1

            If not FileExist("1.txt") {
                Return
            }
            Send {F8}
            Send {F8}
            If not FileExist("1.txt") {
                Return
            }
            Send {`` Down}
            Sleep, 1600
            If not FileExist("1.txt") {
                Return
            }
            Send {`` Up}
            Counter += 1
            If (Counter = 2){
                Counter = 0
                Send 3
                Send {`` Down}
                Sleep, 1600
                Send {`` Up}

            }
        }
    }
Return

createFile(File, Content)
{
    FileAppend, %Content%, %File%
}

~RButton::
    FileDelete, 1.txt
    T := A_TickCount
    While GetKeyState("RButton") {
        If ((A_TickCount - T) > 500){
            Send {F8}
            Send 1
            Send {F8}{F8}
            Send 1
            Send {F8}{F8}{F8}{F8}
            Send 1
        }
    }
Return

r::
    FileDelete, 1.txt
    Send {F8}
    Send 111
    Send 2
    Send 3
    Send 2
Return

^!x::
    SetToolTip("")
ExitApp
Return
