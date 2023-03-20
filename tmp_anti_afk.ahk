; Send slower-ish input
SetKeyDelay(100, 10)

; Every 5 minutes (300k ms)
SetTimer(AntiAFK, 300000)

; Actual Function
AntiAFK() {

    ; Check if ETS2 exists
    if WinExist("Euro Truck Simulator 2") {
        ; Check if ETS2 is in background
        if not WinActive("Euro Truck Simulator 2") {
            ; Send /p to chat
            ControlSend("y{BackSpace}/p{Enter}", , "Euro Truck Simulator 2")
        }
    }
    ; Check if ATS exists
    if WinExist("American Truck Simulator") {
        ; Check if ATS is in background
        if not WinActive("American Truck Simulator") {
            ; Send /p to chat
            ControlSend("y{BackSpace}/p{Enter}", , "American Truck Simulator")
        }
    }
}

; Pause key to trigger manually
Pause:: AntiAFK()
