CoordMode, Mouse, Screen

ToggleCheck = OFF

~LButton::
StartTime := A_TickCount

while GetKeyState("LButton") {
    ; Send, 1
    ; Send {LButton down}
    ; Sleep, 5000
    ; Click, Right
    ; Sleep, 13000

    ; ; Send, 21
    ; ; Send {LButton down}
    ; ; Sleep, 5100
    ; ; Click, Right
    ; ; Click, Right

    Send, 3
    Send {LButton down}
    Sleep, 5500
    Send, {RButton}
    Click, Right
    Click, Right



}
ElapsedTime := A_TickCount - StartTime
ToolTip, %ElapsedTime%

;     while GetKeyState("LButton")
;     {
;         ToggleCheck = ON
;         ToolTip, %ToggleCheck%
;         Send, 1
;     }
;     ToggleCheck = OFF
;     ToolTip, %ToggleCheck%
; return