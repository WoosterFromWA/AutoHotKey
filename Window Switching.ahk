^+F1::
IfWinExist, HipChat
{
	WinActivate
	WinActivate
	WinWaitActive, , , 1
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
	MsgBox, 8208, Not Running, HipChat is not running, cancelling
	return
}
return

^+F2::
IfWinExist, ahk_exe mstsc.exe, gm rdp
{
	WinActivate
	WinActivate
	WinWaitActive, , , 1
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
		MsgBox, 8208, Not Running, RDP is not running, cancelling
		return
}
return

^+F3::
IfWinExist, ahk_exe OUTLOOK.EXE
{
	WinActivate
	WinActivate
	WinWaitActive, , , 1
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
		MsgBox, 8208, Not Running, Outlook is not running, cancelling
		return
}
return

^+F4::
IfWinExist, ahk_exe slack.exe
{
	WinActivate
	WinActivate
	WinWaitActive, , , 1
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
		MsgBox, 8208, Not Running, slack is not running, cancelling
		return
}
return

^+F5::
IfWinExist, ahk_exe firefox.exe
{
	WinActivate
	WinActivate
	WinWaitActive, , , 1
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
		MsgBox, 8208, Not Running, Firefox is not running, cancelling
		return
}
return

^+F6::
IfWinExist, ahk_exe g2mui.exe
{
	WinActivate
	WinActivate
	WinWaitActive, , , 1
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
		MsgBox, 8208, Not Running, GoToMeeting is not running, cancelling
		return
}
return

^+F7::
IfWinExist, ahk_exe chrome.exe
{
	WinActivate
	WinActivate
	WinWaitActive, , , 1 
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
		MsgBox, 8208, Not Running, Chrome is not running, cancelling
		return
}
return

^+F8::
IfWinExist, ahk_exe sldworks.exe
{
	WinActivate
	WinActivate
	WinWaitActive, , , 1 
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
		MsgBox, 8208, Not Running, SOLIDWORKS is not running, cancelling
		return
}
return
