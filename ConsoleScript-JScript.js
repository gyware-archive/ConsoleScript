function Console() {return new ActiveXObject("Scripting.FileSystemObject").GetStandardStream(1);}

Console.prototype.Clear = function() {
    new ActiveXObject("Scripting.FileSystemObject").GetStandardStream(1).WriteBlankLines(100);
};

Console.prototype.EnableAnsi = function() {
  new ActiveXObject("WScript.Shell").RegWrite("HKCU\Console\VirtualTerminalLevel", 1, "REG_DWORD");
};
