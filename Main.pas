unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Data.DB,
  Data.Win.ADODB;


type
  TForm2 = class(TForm)
    Button_uplan_ed: TButton;
    SGD_1: TStringGrid;
    Button_exit: TButton;
    SGD_2: TStringGrid;
    SGD_3: TStringGrid;
    SGD_4: TStringGrid;
    procedure Button_uplan_edClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_exitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
  uplan_editing,uplan_procedures;

{$R *.dfm}

procedure TForm2.Button_exitClick(Sender: TObject);
begin
  form3.Close;
  form2.Close;
end;

procedure TForm2.Button_uplan_edClick(Sender: TObject);
begin
  form3.Show;
  form2.Hide;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  TDBGrid_to_StringGrid(form3.DBGD1_1,SGD_1,'1Ñ','2Ñ');
  TDBGrid_to_StringGrid(form3.DBGD1_2,SGD_2,'3Ñ','4Ñ');
  TDBGrid_to_StringGrid(form3.DBGD1_3,SGD_3,'5Ñ','6Ñ');
  TDBGrid_to_StringGrid(form3.DBGD1_4,SGD_4,'7Ñ','8Ñ');
end;


end.
