[Setup]
AppName=The Shooter Launcher by StormGamesStudios
AppVersion=1.0.0
DefaultDirName={userappdata}\StormGamesStudios\NewGameDir\The_Shooter_Launcher
DefaultGroupName=StormGamesStudios
OutputDir=C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\build
OutputBaseFilename=The_Shooter_Launcher_Installer
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright © 2025 StormGamesStudios. All rights reserved.
VersionInfoCompany=StormGamesStudios
AppPublisher=StormGamesStudios
SetupIconFile=logo.ico
VersionInfoVersion=1.0.0.0
DisableDirPage=yes
DisableProgramGroupPage=yes

[Files]
; Archivos del lanzador
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\publish\The Shooter Launcher.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\publish\The Shooter Launcher.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\publish\The Shooter Launcher.dll.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\publish\The Shooter Launcher.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\publish\The Shooter Launcher.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\publish\The Shooter Launcher.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\csharp-game-launcher-master\GameLauncher\images\logo.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\csharp-game-launcher-master\GameLauncher\images\logo.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\csharp-game-launcher-master\GameLauncher\images\background.png"; DestDir: "{app}"; Flags: ignoreversion

; Agregar el instalador de .NET Core 3.1.32
Source: "C:\Users\mapsp\Documents\GitHub\The-Shooter-Launcher\windowsdesktop-runtime-3.1.32-win-x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion

[Icons]
; Acceso directo en el escritorio
Name: "{userdesktop}\The Shooter Launcher"; Filename: "{app}\The Shooter Launcher.exe"; IconFilename: "{app}\logo.ico"

; Acceso directo en el menú de inicio dentro de la carpeta StormLauncher_HMCL-Edition
Name: "{commonprograms}\StormGamesStudios\The Shooter Launcher"; Filename: "{app}\The Shooter Launcher.exe"; IconFilename: "{app}\logo.ico"
Name: "{commonprograms}\StormGamesStudios\Desinstalar The Shooter Launcher"; Filename: "{uninstallexe}"; IconFilename: "{app}\logo.ico"

[Registry]
; Guardar ruta de instalación para poder desinstalar
Root: HKCU; Subkey: "Software\The Shooter Launcher"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[UninstallDelete]
; Eliminar carpeta del appdata y acceso directo
Type: filesandordirs; Name: "{app}"

[Run]
; Ejecutar el lanzador después de la instalación
Filename: "{app}\The Shooter Launcher.exe"; Description: "Ejecutar The Shooter Launcher"; Flags: nowait postinstall skipifsilent

; Ejecutar el instalador de .NET Core 3.1.32
Filename: "{tmp}\windowsdesktop-runtime-3.1.32-win-x64.exe"; Parameters: "/quiet /norestart"; Flags: waituntilterminated skipifsilent
