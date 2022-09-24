#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

q::
Loop{
    menu()
    game()
}

Esc::
Suspend, Off
Pause, Off, 1
If (toggle := !toggle) {
 Suspend, On
 Pause, On, 1
}

menu(){
    Loop
    {
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, pfp.png
        Sleep, 500
    }
    Until, !ErrorLevel

    Send, {Click 1420 590}
    Sleep, 1000

    Loop, 100{
        Send, {WheelDown}
    }

    Sleep, 1000

    Send, {Click 1400 330}
    Sleep, 500
    Send, {Click 950 860}

    Loop
    {
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, grate.png
        Sleep, 500
    }
    Until, !ErrorLevel
}

game(){
    Send, {Click 440 590}
    Sleep 100
    Send, w
    Sleep, 500
    Send, {Click 440 590}
    Sleep, 500
    Send, {Click 440 590}
    Sleep, 100
    Send, {,}
    Sleep, 100
    Send, {,}
    Sleep, 100
    Send, {,}
    Sleep, 100
    Send, {,}
    Sleep, 100
    Send, {,}
    Sleep, 100
    Send, /
    Sleep, 100
    Send, /
    Sleep, 100
    Send, {Space}
    Sleep, 100
    Send, {Space}
    Sleep, 100

    Loop
    {
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, next.png
        Sleep, 500
    }
    Until, !ErrorLevel

    Click, %FoundX%, %FoundY% Left, 1

    Sleep, 500
    Click, 700,860,Left,1
}
