#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\colorcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\drawImg.ahk
#SingleInstance, Force
#MaxThreadsPerHotkey 1
#MenuMaskKey vk07 ; vk07 is unassigned.
#InstallMouseHook 
#InstallKeybdHook

SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%";
while True {
  If colorCompare.CompareAtPos(1414, 1383, "0xBFC1C9") {
    Send rrrrrrrrrrrrrrrr
  } else {
    SetToolTip("")
  }
}

~^s::
  Send +!f
  Run *RunAs "%A_ScriptFullPath%" 
Return

^!x::
  ; SetToolTip("")
ExitApp
Return
