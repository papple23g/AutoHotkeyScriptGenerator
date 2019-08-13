^+Y::
Loop,1{
    CoordMode, Menu, Screen
    CoordMode, Mouse, Screen

    Menu,MyMenu, Add, Youtube,
    Menu,MyMenu, Add, Yahoo!奇摩股市,

    Show()

    Reload
    WinKill, menu launcher -quits right after .ahk, WinText, ET
    return

    Youtube:
    Run https://www.youtube.com
    return

    Yahoo!奇摩股市:
    Run https://tw.stock.yahoo.com
    return

    Show(){
        static MX,MY
        if (!MX && !MY)
        MouseGetPos, MX, MY
        Menu, MyMenu, Show, % MX, % MY
    }
}
return