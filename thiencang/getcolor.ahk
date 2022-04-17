
#SingleInstance force
z::  ; Control+Alt+Z hotkey.
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%

    clipboard = %MouseX%, %MouseY%, "%color%"

return