[Setup]
AppName=R.E.P.O. Launcher by StormGamesStudios
AppVersion=1.0.0
DefaultDirName={userappdata}\StormGamesStudios\NewGameDir\REPO_Launcher
DefaultGroupName=StormGamesStudios
OutputDir=C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\build
OutputBaseFilename=REPO_Launcher_Installer
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright © 2025 StormGamesStudios. All rights reserved.
VersionInfoCompany=StormGamesStudios
AppPublisher=StormGamesStudios
SetupIconFile=icono.ico
VersionInfoVersion=1.0.0.0
DisableDirPage=yes
DisableProgramGroupPage=yes

[Files]
; Archivos del lanzador
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\publish\R.E.P.O. Launcher.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\publish\R.E.P.O. Launcher.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\publish\R.E.P.O. Launcher.dll.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\publish\R.E.P.O. Launcher.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\publish\R.E.P.O. Launcher.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\publish\R.E.P.O. Launcher.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\csharp-game-launcher-master\GameLauncher\images\icono.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\csharp-game-launcher-master\GameLauncher\images\icono.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\csharp-game-launcher-master\GameLauncher\images\fondo.png"; DestDir: "{app}"; Flags: ignoreversion

; Agregar el instalador de .NET Core 3.1.32
Source: "C:\Users\USER\Desktop\projectos\REPO Launcher\Launcher\windowsdesktop-runtime-3.1.32-win-x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion

[Icons]
; Acceso directo en el escritorio
Name: "{userdesktop}\R.E.P.O. Launcher"; Filename: "{app}\R.E.P.O. Launcher.exe"; IconFilename: "{app}\icono.ico"

; Acceso directo en el menú de inicio dentro de la carpeta StormLauncher_HMCL-Edition
Name: "{commonprograms}\StormGamesStudios\R.E.P.O. Launcher"; Filename: "{app}\R.E.P.O. Launcher.exe"; IconFilename: "{app}\icono.ico"
Name: "{commonprograms}\StormGamesStudios\Desinstalar R.E.P.O. Launcher"; Filename: "{uninstallexe}"; IconFilename: "{app}\icono.ico"

[Registry]
; Guardar ruta de instalación para poder desinstalar
Root: HKCU; Subkey: "Software\R.E.P.O. Launcher"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[UninstallDelete]
; Eliminar carpeta del appdata y acceso directo
Type: filesandordirs; Name: "{app}"

[Run]
; Ejecutar el lanzador después de la instalación
Filename: "{app}\R.E.P.O. Launcher.exe"; Description: "Ejecutar R.E.P.O. Launcher"; Flags: nowait postinstall skipifsilent

; Ejecutar el instalador de .NET Core 3.1.32
Filename: "{tmp}\windowsdesktop-runtime-3.1.32-win-x64.exe"; Parameters: "/quiet /norestart"; Flags: waituntilterminated skipifsilent
