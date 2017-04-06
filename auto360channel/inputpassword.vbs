set Wshell=CreateObject("Wscript.Shell")
wscript.Sleep 500
Wshell.SendKeys "^ "
wscript.Sleep 1000
Wshell.SendKeys "password"
Wshell.SendKeys "{ENTER}"
