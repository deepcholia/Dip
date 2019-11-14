program Dip;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  Uplan_editing in 'Uplan_editing.pas' {Form3},
  Uplan_procedures in 'Uplan_procedures.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
