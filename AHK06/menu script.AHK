#if StringInActiveTitle("Google 文件")
^T:: Send !+5
#if


;偵測目前視窗標題是否含有某一段文字
StringInActiveTitle(String){
    WinGetActiveTitle,WinTitle
    IfInString, WinTitle, %String%
    {
        return True
    }
    else
    {
        return False
    }
}
