Class ConsoleScript

   Public Function WriteLine(txt)
      CreateObject("Scripting.FileSystemObject").GetStandardStream(1).WriteLine(txt)
   End Function
   
   Public Function Write(txt)
      CreateObject("Scripting.FileSystemObject").GetStandardStream(1).Write(txt)
   End Function
   
   Public Function ReadAll()
      ReadAll = CreateObject("Scripting.FileSystemObject").GetStandardStream(0).ReadAll()
   End Function
   
   Public Function ReadLine()
      ReadLine = CreateObject("Scripting.FileSystemObject").GetStandardStream(0).ReadLine()
   End Function
   
   Public Function Read(i)
      Read = CreateObject("Scripting.FileSystemObject").GetStandardStream(0).Read(i)
   End Function
   
   Public Function Clear()
      CreateObject("Scripting.FileSystemObject").GetStandardStream(1).WriteBlankLines(100)
   End Function

   Public Function WriteBlankLines(i)
      CreateObject("Scripting.FileSystemObject").GetStandardStream(1).WriteBlankLines(i)
   End Function
   
   Public Function EnableAnsi()
      Call CreateObject("WScript.Shell").RegWrite("HKCU\Console\VirtualTerminalLevel", 1, "REG_DWORD")
   End Function
   
End Class

Set Console = New ConsoleScript


Console.EnableAnsi()

Console.WriteLine "[91mHello [92mWorld[94m![0m"

Console.WriteLine "Clearing in..."
Console.WriteLine ""
Console.WriteLine "[1F3[0m"
WScript.Sleep 1000
Console.WriteLine "[1F2[0m"
WScript.Sleep 1000
Console.WriteLine "[1F1[0m"
WScript.Sleep 1000
Console.Clear()

Console.Write "Enter your name: "
Dim name
name = Console.ReadLine()
Console.Write "Hello, " & name & "!"
WScript.Sleep 6000