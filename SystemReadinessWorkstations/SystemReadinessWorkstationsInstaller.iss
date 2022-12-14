#define ProjectName "SystemReadinessWorkstations"
#define MyAppName "System Readiness for Workstations"
#define MyAppVersion "1.0.1.2"
#define MyAppURL "https://github.com/mrkenhoo/SystemReadinessWorkstations"
#define MyAppExeName "SystemReadinessWorkstations.exe"
#define MyUsername "mrkenhoo"
#define VersionInfoDescription "System Readiness for Workstations"

[Setup]
AppId={{28B11907-066D-4911-BA15-E70234360C28}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}/releases
UsePreviousAppDir=no
DefaultDirName={autopf64}\mrkenhoo\{#ProjectName}
DefaultGroupName={#MyUsername}\{#MyAppName}
AllowNoIcons=yes
LicenseFile=C:\Users\{#MyUsername}\Documents\GitHub\{#ProjectName}\LICENSE
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\{#MyUsername}\Documents\GitHub\isscripts\{#ProjectName}
OutputBaseFilename={#ProjectName}Installer
Compression=lzma
SolidCompression=yes
WizardStyle=modern
VersionInfoCompany=Ken Hoo
VersionInfoCopyright=GNU General Public License v3.0
VersionInfoDescription={#VersionInfoDescription}
VersionInfoOriginalFileName={#ProjectName}Installer.exe
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoProductTextVersion={#MyAppVersion}
VersionInfoTextVersion={#MyAppVersion}
WizardResizable=no
WindowResizable=no      
MinVersion=10.0.19041                     
ArchitecturesAllowed=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Types]
Name: "full"; Description: "Full installation"; Flags: iscustom

[Components]
Name: "corefiles"; Description: "Required libraries"; Types: full; Flags: fixed
Name: "programfiles"; Description: "Program files"; Types: full; Flags: fixed

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]
Type: filesandordirs; Name: {app}\*;

[Files]
Source: "C:\Users\{#MyUsername}\Documents\GitHub\{#ProjectName}\bin\x64\Release\net7.0-windows10.0.22621.0\publish\win-x64\*"; DestDir: "{app}"; \
                                                                                                                             Flags: ignoreversion recursesubdirs createallsubdirs; \
                                                                                                                             Components: programfiles; \
                                                                                                                             MinVersion: 10.0.19041

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

