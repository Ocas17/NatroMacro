; camera rotation/zoom stuff
send("{" RotUp " 11}"), sleep(100), send("{" RotDown " 4}")
loop 5
    send("{" ZoomIn "}"), sleep(50)
; corner aligning to the pine tree field
nm_Walk(15, LeftKey, FwdKey), nm_Walk(6, FwdKey), nm_Walk(6, LeftKey)
; from the corner towards the cannon area
nm_Walk(23, BackKey, RightKey), nm_Walk(36, BackKey), nm_Walk(7, BackKey, RightKey), nm_Walk(8, BackKey)
; going up to the cannon
send("{" SC_Space " down}"), HSleep(100)
send "{" SC_Space " up}"
nm_Walk(5, BackKey), sleep(500), nm_Walk(3, RightKey), nm_Walk(7, FwdKey), nm_Walk(8, BackKey)
send "{" SC_LShift "}" ; enable shift-lock
loop 4
    send("{" RotRight "}"), Sleep(30)
sleep(100)
; using the cannon
send("{" SC_E " down}"), HSleep(10)
send("{" SC_E " up}"), HSleep(10)
loop 2 ; enable glider
    send("{" SC_Space " down}"), HSleep(200), send("{" SC_Space " up}"), HSleep(200)
HSleep(3800)
; disabling glider
send("{" SC_Space " down}"), HSleep(100)
send("{" SC_Space " up}"), sleep(500)
; going to the "ramp"
send "{" SC_LShift "}" ; disable shift-lock
nm_Walk(3.5, BackKey), nm_Walk(2, RightKey), nm_Walk(2, FwdKey), nm_Walk(14, RightKey), nm_Walk(4, FwdKey), nm_Walk(5, BackKey, LeftKey)
loop 4 ; zooming out
    send("{" ZoomOut "}"), sleep(50)
sleep(100)
HSleep(ms) { ; less resourseful hypersleep, made by .ninju.
	s := QPC()
	while (e:= QPC() - s) < ms {
		switch {
			case ms - e > 25: DllCall("Sleep", "uint", ms - e - 22)
			case ms - e > 8: DllCall("winmm.dll\timeBeginPeriod", "uint", 5), DllCall("Sleep", "uint", 1), DllCall("winmm.dll\timeEndPeriod", "uint", 5)
			case ms - e > 3: DllCall("winmm.dll\timeBeginPeriod", "uint", 1), DllCall("Sleep", "uint", 1), DllCall("winmm.dll\timeEndPeriod", "uint", 1)
		}
	}
	return QPC() - s
}
QPC() {
    static _:=0, f := (DllCall("QueryPerformanceFrequency", "int64p", &_),_ /= 1000)
    return (DllCall("QueryPerformanceCounter", "int64p", &_), _ / f)
}
; made by dully176 with care
