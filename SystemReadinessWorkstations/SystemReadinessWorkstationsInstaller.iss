#define ProjectName "SystemReadinessWorkstations"
#define MyAppName "System Readiness for Workstations"
#define MyAppVersion "1.0.0.1"
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
DefaultDirName={autopf64}\mrkenhoo\SystemReadiness\Workstations
DefaultGroupName={#MyUsername}\System Readiness\Workstations
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
Source: "C:\Users\{#MyUsername}\Documents\GitHub\SystemReadinessCore\build\SystemReadinessCore.dll"; DestDir: "{app}"; \
                                                                                                 Flags: ignoreversion; \
                                                                                                 Components: corefiles; \
                                                                                                 MinVersion: 10.0.19041
Source: "C:\Users\{#MyUsername}\Documents\GitHub\{#ProjectName}\build\*"; DestDir: "{app}"; \
                                                                           Flags: ignoreversion recursesubdirs createallsubdirs; \
                                                                           Components: programfiles; \
                                                                           Excludes: SystemReadinessCore.dll; \
                                                                           MinVersion: 10.0.19041

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

