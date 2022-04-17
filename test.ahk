obj := CriticalObject() ; Create new critical object
Threads:=[]
Loop 4 ; Create 4 Threads.
 threads.Push(NewThread("obj:=CriticalObject(" ObjPtr(obj) ")`nLoop`nobj[" A_Index "]:= A_Index"))
 
Loop ; Show current content of object.
 ToolTip obj.1 "`n" obj.2 "`n" obj.3 "`n" obj.4
Esc::ExitApp