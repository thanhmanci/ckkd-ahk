#Persistent
SetTimer, Label1, 100
SetTimer, Label2, 100
return

Label1:
	ControlSend, ,{a}, title1 - notepad
return

Label2:
	ControlSend, ,{b}, title2 - notepad
return