#IfWinActive
!RButton::
MouseGetPos, x, y
While GetKeyState("RButton", "P")
{
  MouseGetPos, new_x, new_y
  ToolTip, % (x - new_x)
}
ToolTip,
return