class ConsoleScript {
  get Force() {
    if (WScript.FullName.toLowerCase().indexOf("cscript.exe") === -1) {
      new ActiveXObject("WScript.Shell").Run("cscript.exe //NoLogo " + '"' + WScript.ScriptFullName + '"');
      WScript.Quit();
    }
  }

  get WriteLine() {
    return function (txt) {
      WScript.StdOut.WriteLine(txt);
    };
  }

  get Write() {
    return function (txt) {
      WScript.StdOut.Write(txt);
    };
  }

  get ReadLine() {
    return WScript.StdIn.ReadLine();
  }

  get Read() {
    return function (i) {
      return WScript.StdIn.Read(i);
    };
  }

  get Clear() {
    for (let i = 1; i <= 100; i++) {
      WScript.StdOut.WriteLine("");
    }
  }

  get EnableAnsi() {
    const PS = new ActiveXObject("WScript.Shell").Exec('powershell.exe -noProfile -executionPolicy bypass -c "exit"');
    while (PS.Status === 0) {
      WScript.Sleep(30);
    }
  }
}
