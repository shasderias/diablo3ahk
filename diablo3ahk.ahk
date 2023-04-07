; This is an AutoHotKey script designed to be used with Diablo III
; Pressing F1 will constantly activate skill 1, F2 will activate skill 2, F3 for 3, and F4 for 4
; The keys are togglable.

; Thread, interrupt, 0
#Warn All, Off

togOn := false
togF1 := false
togF2 := false
togF3 := false
togF4 := false

F1:: {
	global togF1
	togF1 := !togF1
}
F2:: {
	global togF2
	togF2 := !togF2
}
F3:: {
	global togF3
	togF3 := !togF3
}
F4:: {
	global togF4
	togF4 := !togF4
}
\:: {
	global togOn
	togOn := !togOn
}

SetTimer Repeat, 250

Repeat()
{
	if (!WinActive("Diablo III")) {
		return
	}
	if (!togOn) {
		return
	}
	if (togF1) {
		Send 1
	}
	if (togF2) {
		Send 2
	}
	if (togF3) {
		Send 3
	}
	if (togF4) {
		Send 4
	}
}

#HotIf WinActive("Diablo III")
XButton1:: {
	while GetKeyState("XButton1", "P") {
		MouseClick
		Sleep 100
	}
}