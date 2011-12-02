; BEGIN BUILTINS.ISS


; The following message can be overriden in ISS script.
; It is not required by ISPP license agreement, but it would be appreciated
; if you do not remove this note.

[Messages]
AboutSetupNote=Inno Setup Preprocessor home page:%nhttp://ispp.sourceforge.net/
[/Messages]
; END BUILTINS.ISS
; -- ISPPExample1.iss --
;
; This script shows various basic things you can achieve using Inno Setup Preprocessor (ISPP) by Alex Yackimoff.
; To enable commented #define's, either remove the ';' or use ISPPCC with the /D switch.
;
; To download and install ISPP, get the Inno Setup QuickStart Pack from http://www.jrsoftware.org/isdl.php#qsp



;#define AppEnterprise



[Setup]
AppName=My Program
AppVerName=My Program version 1.5.0.0
DefaultDirName={pf}\My Program
DefaultGroupName=My Program
UninstallDisplayIcon={app}\MyProg.exe
LicenseFile=C:\DOCUME~1\rachel\LOCALS~1\Temp\ISP62C.tmp
VersionInfoVersion=1.5.0.0
OutputDir=userdocs:Inno Setup Examples Output

[Files]
Source: "MyProg.exe"; DestDir: "{app}"
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\My Program"; Filename: "{app}\MyProg.exe"

