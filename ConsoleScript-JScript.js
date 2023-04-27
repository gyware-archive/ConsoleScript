function Console() {return new ActiveXObject("Scripting.FileSystemObject").GetStandardStream(1);}

Console.prototype.Clear = function() {
    new ActiveXObject("Scripting.FileSystemObject").GetStandardStream(1).WriteBlankLines(100);
};

Console.prototype.EnableAnsi = function() {
  var PS = new ActiveXObject("WScript.Shell").Exec('powershell.exe -noProfile -executionPolicy bypass -c "exit"');
  PS.Terminate();
};
