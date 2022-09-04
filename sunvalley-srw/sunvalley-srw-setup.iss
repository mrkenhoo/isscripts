#define MyAppName "System Readiness for Workstations"
#define MyAppVersion "0.0.13.10"
#define MyAppURL "https://github.com/mrkenhoo/sunvalley-srw"
#define MyAppExeName "sunvalley-srw.exe"
#define MyUsername "mrkenhoo"
#define VersionInfoDescription "System Readiness for Workstations"

[Setup]
AppId={{28B11907-066D-4911-BA15-E70234360C28}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}/releases
UsePreviousAppDir=no
DefaultDirName={autopf64}\mrkenhoo\sunvalley-srw
DefaultGroupName=mrkenhoo\sunvalley-srw
AllowNoIcons=yes
LicenseFile=C:\Users\{#MyUsername}\Documents\GitHub\sunvalley-srw\LICENSE
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\{#MyUsername}\Documents\GitHub\sunvalley-srw\inno_setup
OutputBaseFilename=sunvalley-srw-setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
VersionInfoCompany=Ken Hoo
VersionInfoCopyright=GNU General Public License v3.0
VersionInfoDescription={#VersionInfoDescription}
VersionInfoOriginalFileName=sunvalley-srw-setup.exe
VersionInfoProductName=System Readiness for Workstations
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
Name: "corefiles"; Description: "Required program files"; Types: full; Flags: fixed

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]
Type: filesandordirs; Name: {app}\*;

[Files]
Source: "C:\Users\{#MyUsername}\Documents\GitHub\sunvalley-srw\workstations_v5\bin\x64\Release\net6.0-windows10.0.22621.0\publish\win-x64\*"; DestDir: "{app}"; \
                                                                                                       Flags: ignoreversion recursesubdirs createallsubdirs; \
                                                                                                       Components: corefiles; \
                                                                                                       MinVersion: 10.0.19041

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

