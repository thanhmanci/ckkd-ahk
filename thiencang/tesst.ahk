#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
LButton:: 
    StartTime := A_TickCount
    Send {LButton Down}
    KeyWait LButton
    Send {LButton Up}
    EndTime := A_TickCount
    ElapsedSeconds := (EndTime - StartTime)/1000.0

    SetToolTip(ElapsedSeconds)
Return
