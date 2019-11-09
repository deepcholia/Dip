unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    Panel4: TPanel;
    Label4: TLabel;
    DBGrid4: TDBGrid;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  SQL_query1:string;
  SQL_query2:string;
  SQL_query3:string;
  SQL_query4:string;

implementation
uses sad;

{$R *.dfm}

procedure TForm2.Button10Click(Sender: TObject);
begin
  ADD_line(ADOQuery3);
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
  DEL_line(ADOQuery3);
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
  Workspace_navi(Panel4,Panel1,Panel2,Panel3,ADOQuery2);
  BaseLoad(ADOQuery4,SQL_query4,dbgrid4);
end;

procedure TForm2.Button15Click(Sender: TObject);
begin
  Workspace_navi(Panel3,Panel1,Panel2,Panel4,ADOQuery2);
  BaseLoad(ADOQuery3,SQL_query3,dbgrid3);
end;

procedure TForm2.Button16Click(Sender: TObject);
begin
  Workspace_navi(Panel2,Panel1,Panel3,Panel4,ADOQuery3);
  BaseLoad(ADOQuery2,SQL_query2,dbgrid2);
end;

procedure TForm2.Button17Click(Sender: TObject);
begin
  Workspace_navi(Panel4,Panel1,Panel2,Panel3,ADOQuery3);
  BaseLoad(ADOQuery4,SQL_query4,dbgrid4);
end;

procedure TForm2.Button19Click(Sender: TObject);
begin
  ADD_line(ADOQuery4);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Workspace_navi(Panel2,Panel1,Panel3,Panel4,ADOQuery1);
  BaseLoad(ADOQuery2,SQL_query2,dbgrid2);
end;

procedure TForm2.Button20Click(Sender: TObject);
begin
  DEL_line(ADOQuery4);
end;

procedure TForm2.Button21Click(Sender: TObject);
begin
  Workspace_navi(Panel1,Panel2,Panel3,Panel4,ADOQuery4);
  BaseLoad(ADOQuery1,SQL_query1,dbgrid1);
end;

procedure TForm2.Button22Click(Sender: TObject);
begin
  Workspace_navi(Panel2,Panel1,Panel3,Panel4,ADOQuery4);
  BaseLoad(ADOQuery2,SQL_query2,dbgrid2);
end;

procedure TForm2.Button24Click(Sender: TObject);
begin
  Workspace_navi(Panel3,Panel1,Panel2,Panel4,ADOQuery4);
  BaseLoad(ADOQuery3,SQL_query3,dbgrid3);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Workspace_navi(Panel3,Panel1,Panel2,Panel4,ADOQuery1);
  BaseLoad(ADOQuery3,SQL_query3,dbgrid3);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Workspace_navi(Panel4,Panel1,Panel2,Panel3,ADOQuery1);
  BaseLoad(ADOQuery4,SQL_query4,dbgrid4);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  ADD_line(ADOQuery1);
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  DEL_line(ADOQuery1);
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  ADD_line(ADOQuery2);
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  DEL_line(ADOQuery2);
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
  Workspace_navi(Panel1,Panel2,Panel3,Panel4,ADOQuery3);
  BaseLoad(ADOQuery1,SQL_query1,dbgrid1);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  SQL_query1:='SELECT id_disc,index_disc,name_disc,fc_ex,fc_zach,fc_zacho,fc_kr,fc_kp,num_zet,hours_zet,k1s1_lec,k1s1_lab,k1s1_pr,k1s1_sam,k1s2_lec,k1s2_lab,k1s2_pr,k1s2_sam from disciplines';
  SQL_query2:='SELECT id_disc,index_disc,name_disc,fc_ex,fc_zach,fc_zacho,fc_kr,fc_kp,num_zet,hours_zet,k2s1_lec,k2s1_lab,k2s1_pr,k2s1_sam,k2s2_lec,k2s2_lab,k2s2_pr,k2s2_sam from disciplines';
  SQL_query3:='SELECT id_disc,index_disc,name_disc,fc_ex,fc_zach,fc_zacho,fc_kr,fc_kp,num_zet,hours_zet,k3s1_lec,k3s1_lab,k3s1_pr,k3s1_sam,k3s2_lec,k3s2_lab,k3s2_pr,k3s2_sam from disciplines';
  SQL_query4:='SELECT id_disc,index_disc,name_disc,fc_ex,fc_zach,fc_zacho,fc_kr,fc_kp,num_zet,hours_zet,k4s1_lec,k4s1_lab,k4s1_pr,k4s1_sam,k4s2_lec,k4s2_lab,k4s2_pr,k4s2_sam from disciplines';
  BaseLoad(ADOQuery1,SQL_query1,dbgrid1);
  BaseLoad(ADOQuery2,SQL_query2,dbgrid2);
  BaseLoad(ADOQuery3,SQL_query3,dbgrid3);
  BaseLoad(ADOQuery4,SQL_query4,dbgrid4);
end;

end.
