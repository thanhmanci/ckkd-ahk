#Include C:\Users\ManCi\Desktop\ckkd\lib\stringcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\settooltip.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\colorcompare.ahk
#Include C:\Users\ManCi\Desktop\ckkd\lib\drawImg.ahk

#Persistent
SetTimer, WatchCursor, 120
return

WatchCursor:
  if (colorCompare.CompareAtPos(154, 1238, "0x0F111D")){
    Send 1
    Sleep, 2000
  }

  if (colorCompare.CompareAtPos(3294, 1352, "0x1C1618")){
    Send 2
    Sleep, 2000
  }
  
  MouseGetPos, , , id, control
  SetToolTip("HEAL")
return