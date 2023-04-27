Class ConsoleScript

   Public Sub WriteLine(txt)
      CreateObject("Scripting.FileSystemObject").GetStandardStream(1).WriteLine txt
   End Sub
   
   Public Sub Write(txt)
      CreateObject("Scripting.FileSystemObject").GetStandardStream(1).Write txt
   End Sub
   
   Public Sub ReadLine()
      ReadLine = CreateObject("Scripting.FileSystemObject").GetStandardStream(1).ReadLine
   End Sub
   
   Public Sub Read(i)
      Read = CreateObject("Scripting.FileSystemObject").GetStandardStream(1).Read(i)
   End Sub
   
   Public Sub Clear()
      CreateObject("Scripting.FileSystemObject").GetStandardStream(1).WriteBlankLines(100)
   End Sub

   Public Sub WriteBlankLines(i)
      CreateObject("Scripting.FileSystemObject").GetStandardStream(1).WriteBlankLines(i)
   End Sub
   
   Public Sub EnableAnsi()
      Set PS = CreateObject("WScript.Shell").Exec("powershell.exe -noProfile -executionPolicy bypass -c ""exit""")
      PS.Terminate()
   End Sub
   
End Class
