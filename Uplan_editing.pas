unit Uplan_editing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Connection_1: TADOConnection;
    DataD1_1: TDataSource;
    QueryD1_1: TADOQuery;
    DBGD1_1: TDBGrid;
    DBGD1_2: TDBGrid;
    Выход: TButton;
    Panel_disciplines_1: TPanel;
    DataD1_2: TDataSource;
    QueryD1_2: TADOQuery;
    ButtonD1_1_add: TButton;
    ButtonD1_1_del: TButton;
    ButtonD1_2_add: TButton;
    ButtonD1_3_add: TButton;
    ButtonD1_4_add: TButton;
    ButtonD1_2_del: TButton;
    ButtonD1_3_del: TButton;
    ButtonD1_4_del: TButton;
    ButtonD1_1_C1: TButton;
    ButtonD1_1_C2: TButton;
    ButtonD1_1_C3: TButton;
    ButtonD1_1_C4: TButton;
    DBGD1_3: TDBGrid;
    DataD1_3: TDataSource;
    DataD1_4: TDataSource;
    QueryD1_3: TADOQuery;
    QueryD1_4: TADOQuery;
    DBGD1_4: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure ВыходClick(Sender: TObject);
    procedure ButtonD1_1_addClick(Sender: TObject);
    procedure ButtonD1_1_delClick(Sender: TObject);
    procedure ButtonD1_1_C1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  SQL_query_alpha:string;
  SQL_query_omega:string;
  SQL_query1:string;
  SQL_query2:string;
  SQL_query3:string;
  SQL_query4:string;

implementation
uses
  uplan_procedures,main;

{$R *.dfm}

{Добавление строк}
procedure TForm3.ButtonD1_1_addClick(Sender: TObject);
begin
  case (Sender as TButton).Tag of
  1: ADD_line(QueryD1_1);
  2: ADD_line(QueryD1_2);
  3: ADD_line(QueryD1_3);
  4: ADD_line(QueryD1_4);
  end;
end;

{Удаление строк}
procedure TForm3.ButtonD1_1_C1Click(Sender: TObject);
begin
case (Sender as TButton).Tag of
  9:
  begin
    Change_ADDDEL(ButtonD1_1_add,ButtonD1_2_add,ButtonD1_3_add,ButtonD1_4_add,ButtonD1_1_del,ButtonD1_2_del,ButtonD1_3_del,ButtonD1_4_del);
    Change_TDBGrid(DBGD1_1,DBGD1_2,DBGD1_3,DBGD1_4,QueryD1_1);
  end;
  10:
  begin
    Change_ADDDEL(ButtonD1_2_add,ButtonD1_1_add,ButtonD1_3_add,ButtonD1_4_add,ButtonD1_2_del,ButtonD1_1_del,ButtonD1_3_del,ButtonD1_4_del);
    Change_TDBGrid(DBGD1_2,DBGD1_1,DBGD1_3,DBGD1_4,QueryD1_2);
  end;
  11:
  begin
    Change_ADDDEL(ButtonD1_3_add,ButtonD1_1_add,ButtonD1_2_add,ButtonD1_4_add,ButtonD1_3_del,ButtonD1_2_del,ButtonD1_1_del,ButtonD1_4_del);
    Change_TDBGrid(DBGD1_3,DBGD1_2,DBGD1_1,DBGD1_4,QueryD1_3);
  end;
  12:
  begin
    Change_ADDDEL(ButtonD1_4_add,ButtonD1_2_add,ButtonD1_3_add,ButtonD1_1_add,ButtonD1_4_del,ButtonD1_2_del,ButtonD1_3_del,ButtonD1_1_del);
    Change_TDBGrid(DBGD1_4,DBGD1_2,DBGD1_3,DBGD1_1,QueryD1_4);
  end;

end;
end;

procedure TForm3.ButtonD1_1_delClick(Sender: TObject);
begin
  case (Sender as TButton).Tag of
  5: DEL_line(QueryD1_1);
  6: DEL_line(QueryD1_2);
  7: DEL_line(QueryD1_3);
  8: DEL_line(QueryD1_4);
  end;
end;

{Переход между строками}


procedure TForm3.FormCreate(Sender: TObject);
begin
  SQL_query_alpha:='SELECT index_disc,name_disc,fc_ex,fc_zach,fc_zacho,fc_kr,fc_kp,num_zet,hours_zet,contact_hours,';
  SQL_query_omega:=' from disciplines';
  SQL_query1:=SQL_query_alpha+'k1s1_lec,k1s1_lab,k1s1_pr,k1s1_sam,k1s1_chours,k1s2_lec,k1s2_lab,k1s2_pr,k1s2_sam,k1s2_chours'+SQL_query_omega;
  SQL_query2:=SQL_query_alpha+'k2s1_lec,k2s1_lab,k2s1_pr,k2s1_sam,k2s1_chours,k2s2_lec,k2s2_lab,k2s2_pr,k2s2_sam,k2s2_chours'+SQL_query_omega;
  SQL_query3:=SQL_query_alpha+'k3s1_lec,k3s1_lab,k3s1_pr,k3s1_sam,k3s1_chours,k3s2_lec,k3s2_lab,k3s2_pr,k3s2_sam,k3s2_chours'+SQL_query_omega;
  SQL_query4:=SQL_query_alpha+'k4s1_lec,k4s1_lab,k4s1_pr,k4s1_sam,k4s1_chours,k4s2_lec,k4s2_lab,k4s2_pr,k4s2_sam,k4s2_chours'+SQL_query_omega;
  BaseLoad(QueryD1_1,SQL_query1,DBGD1_1,'1С','2С');
  BaseLoad(QueryD1_2,SQL_query2,DBGD1_2,'3С','4С');
  BaseLoad(QueryD1_3,SQL_query3,DBGD1_3,'5С','6С');
  BaseLoad(QueryD1_4,SQL_query4,DBGD1_4,'7С','8С');
end;

procedure TForm3.ВыходClick(Sender: TObject);
begin
  form2.Show;
  form3.Hide;
end;

end.
