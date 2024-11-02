#Requires AutoHotkey v2.0
#NoTrayIcon

#F4::ExitApp

LWin:: {
    Send "{LWin Down}"
}

LWin Up:: {
     Send "{Blind}{vkE8}{LWin Up}"
}  

RWin:: {
    Send "{RWin Down}"
}

RWin Up:: {
     Send "{Blind}{vkE8}{RWin Up}"
} 


; Assign Windows key + 1 to last jetbrains IDE USED
#1::
{
    if WinActive("ahk_class SunAwtFrame") {
        Return
    }

    if WinExist("ahk_class SunAwtFrame") 
    {
        WinActivate
    }
    else
    {
        LocalAppData := EnvGet("LocalAppData")
        Run(LocalAppData . "\JetBrains\Toolbox\bin\jetbrains-toolbox.exe")
    }
}

; Assign Windows key + 2 to last edge window opened
#2::
{

    if WinActive("ahk_exe msedge.exe") {
        Return
    }

    if WinExist("ahk_exe msedge.exe")
    {
        WinActivate
    }
    else
    {
        Run("msedge.exe")
    }
}

; Assign Windows key + 3 to Windows Terminal
#3::
{

    if WinActive("ahk_exe WindowsTerminal.exe") {
        Return
    }

    if WinExist("ahk_exe WindowsTerminal.exe")
    {
        WinActivate
    }
    else
    {
        Run("WindowsTerminal.exe")
    }
}


; Assign Windows key + 4 to Teams
#4::
{

    if WinActive("ahk_exe ms-teams.exe") {
        Return
    }

    if WinExist("ahk_exe ms-teams.exe")
    {
        WinActivate
    }
    else
    {
        Run("ms-teams.exe")
    }
}