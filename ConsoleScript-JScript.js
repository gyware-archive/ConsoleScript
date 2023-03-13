function ConsoleScript() {}

ConsoleScript.prototype.Force = function() {
  if (WScript.FullName.toLowerCase().indexOf("cscript.exe") === -1) {
    new ActiveXObject("WScript.Shell").Run("cscript.exe //NoLogo " + '"' + WScript.ScriptFullName + '"');
    WScript.Quit();
  }
};

ConsoleScript.prototype.WriteLine = function(txt) {
  WScript.StdOut.WriteLine(txt);
};

ConsoleScript.prototype.Write = function(txt) {
  WScript.StdOut.Write(txt);
};

ConsoleScript.prototype.ReadLine = function() {
  return WScript.StdIn.ReadLine();
};

ConsoleScript.prototype.Read = function(i) {
  return WScript.StdIn.Read(i);
};

ConsoleScript.prototype.Clear = function() {
  for (var i = 1; i <= 100; i++) {
    WScript.StdOut.WriteLine("");
  }
};

ConsoleScript.prototype.EnableAnsi = function() {
  var PS = new ActiveXObject("WScript.Shell").Exec('powershell.exe -noProfile -executionPolicy bypass -c "exit"');
  while (PS.Status === 0) {
    WScript.Sleep(30);
  }
};
