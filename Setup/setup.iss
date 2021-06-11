; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "TreeATE"
#define MyAppVersion "2.3.0"
#define MyAppPublisher "David Yin"
#define MyAppURL "https://blog.csdn.net/vivasoft/column/info/31202"
#define MyAppExeName "TreeATE.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{808464B9-ED42-422A-A3FF-A8E75301F3B1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=..\LICENSE
OutputDir=.\
OutputBaseFilename=Setup_TreeATE_V{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Projects\build-TreeATE-Desktop_Qt_5_9_6_MSVC2015_32bit-Release\bin\*"; DestDir: "{app}"; Excludes: "*exp,*.lib,*.sqlite,*.txt"; Flags: recursesubdirs replacesameversion
Source: "..\Example\TestDemo\*"; DestDir: "{app}\Example\TestDemo\"; Flags: recursesubdirs
Source: "..\Example\TestDemoPy\*"; DestDir: "{app}\Example\TestDemoPy\"; Flags: recursesubdirs
Source: "..\Example\TestDemoPy2\*"; DestDir: "{app}\Example\TestDemoPy2\"; Flags: recursesubdirs
Source: "..\Example\TestCppDemo\*"; DestDir: "{app}\Example\TestCppDemo\"; Flags: recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

