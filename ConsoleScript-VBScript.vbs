Class ConsoleScript
   
   Public Property Get Force()
      If InStr(LCase(WScript.FullName), "cscript.exe") = 0 Then
        CreateObject("WScript.Shell").Run "cscript.exe //NoLogo " & Chr(34) & WScript.ScriptFullName & Chr(34)
        WScript.Quit
    End If
   End Property

   Public Property Get WriteLine(txt)
      WScript.StdOut.WriteLine txt
   End Property
   
   Public Property Get Write(txt)
      WScript.StdOut.Write txt
   End Property
   
   Public Property Get ReadLine()
      ReadLine = WScript.StdIn.ReadLine
   End Property
   
   Public Property Get Read(i)
      Read = WScript.StdIn.Read(i)
   End Property
   
   Public Property Get Clear()
      For i = 1 To 100
        WScript.StdOut.WriteLine ""
      Next
   End Property
   
   Public Property Get EnableAnsi()
      Set PS = CreateObject("WScript.Shell").Exec("powershell.exe -noProfile -executionPolicy bypass -c ""exit""")
	  While PS.Status = 0
         WScript.Sleep 30
	  Wend
   End Property
   
End Class
