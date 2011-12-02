; -- CodeClasses.iss --
;
; This script shows how to use the WizardForm object and the various VCL classes.

[Setup]
AppName=My Program
AppVerName=My Program version 1.5
CreateAppDir=no
DisableProgramGroupPage=yes
DefaultGroupName=My Program
UninstallDisplayIcon={app}\MyProg.exe
WindowVisible=yes
OutputDir=userdocs:Inno Setup Examples Output

[Files]
Source: compiler:WizModernSmallImage.bmp; Flags: dontcopy

[Code]
procedure InitializeWizard();
var
  Page: TWizardPage;
  StaticText, ProgressBarLabel: TNewStaticText;
  CheckBox: TNewCheckBox;
begin
  Page := CreateCustomPage(wpWelcome, 'Custom wizard page controls', 'TButton and others');

  StaticText := TNewStaticText.Create(Page);
  {StaticText.Top := ListBox.Top + ListBox.Height + ScaleY(8);}
  StaticText.Caption := 'TNewStaticText';
  StaticText.AutoSize := True;
  StaticText.Parent := Page.Surface;

  CheckBox := TNewCheckBox.Create(Page);
  CheckBox.Top := StaticText.Top + StaticText.Height + ScaleY(8);
  CheckBox.Width := Page.SurfaceWidth;
  CheckBox.Height := ScaleY(17);
  CheckBox.Caption := 'TNewCheckBox';
  CheckBox.Checked := True;
  CheckBox.Parent := Page.Surface;
end;
