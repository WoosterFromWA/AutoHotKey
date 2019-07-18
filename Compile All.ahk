#SingleInstance, force 												; Forces only one instance, allows to re-run script without reloading

listAHK := ["3CX", "3DConnexion Reset", "Basic Shortcuts", "Quick Status Change", "Run All", "SOLIDWORKS Reset", "Window Switching"]
pathNSIS := % A_ProgramFiles "\NSIS\makensis.exe"
optionsNSIS := "/OC:\Users\karl\Documents\GitHub\AutoHotKey\compile_log.log"
pathIN := % A_WorkingDir "\QI Tools.nsi"

For index, AHK in listAHK
{
	ahkEXE := % AHK ".exe"

	; MsgBox, %ahkEXE%

	Process, Exist, % ahkEXE
	; MsgBox, % ErrorLevel
	While ErrorLevel
	{
		ToolTip, % "Closing " AHK
		Process, Close, % ahkEXE
		if not ErrorLevel
		{
			MsgBox, 16, Error, % "Unable to close " ahkEXE "!`n`nPlease close all scripts manually`nand run ""Run All"" from the`nStart Menu"
			ExitApp
		}
		Process, Exist, % ahkEXE
	}
	Process, WaitClose, % ahkEXE, 5
	if ErrorLevel
		MsgBox, "What the hell?"

	try
	{
		ToolTip, % "Compiling " AHK
		RunWait, % "Ahk2Exe.exe /in """ AHK ".ahk"" /icon images/red_q_on_blue_bkgd.ico"					; Run compiler for AHK files
	} catch e {
		MsgBox, % "Unable to compile """ AHK """, exiting"
		ExitApp
	}
}

ToolTip, Compiling Installer
RunWait, % """" pathNSIS """ """ optionsNSIS """ """ pathIN """"	; Compile NSIS file, writing log to file

ToolTip