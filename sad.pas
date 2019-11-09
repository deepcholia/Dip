unit sad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls;

procedure BaseLoad(Query: TADOQuery; TQuery:string;grid:TDBGrid);
procedure ADD_line(Query: TADOQuery);
procedure DEL_line(Query: TADOQuery);
procedure Workspace_navi(Workspace1,Workspace2,Workspace3,Workspace4:Tpanel;Query: TADOQuery);

implementation


procedure Workspace_navi(Workspace1,Workspace2,Workspace3,Workspace4:Tpanel;Query: TADOQuery);
begin
  workspace1.Visible:=true;
  workspace2.Visible:=false;
  workspace3.Visible:=false;
  workspace4.Visible:=false;
  Query.Edit;
  Query.Post;
end;
procedure BaseLoad(Query: TADOQuery; TQuery:string;grid:TDBGrid);  //�������� ���� ���������� � ����
var
  i:integer;
begin
  Query.SQL.Text:=TQuery;
  Query.Active:=true;
  grid.Columns[0].Title.caption:='     �����';
  grid.Columns[1].Title.caption:='     ������';
  grid.Columns[2].Title.caption:='     ������������';
  grid.Columns[3].Title.caption:='     �������';
  grid.Columns[4].Title.caption:='     �����';
  grid.Columns[5].Title.caption:='     ����� � �������';
  grid.Columns[6].Title.caption:='     �������� ������';
  grid.Columns[7].Title.caption:='     �������� ������';
  grid.Columns[8].Title.caption:='     ���';
  grid.Columns[9].Title.caption:='     ����� � ���';
  grid.Columns[10].Title.caption:='     �1: ������';
  grid.Columns[11].Title.caption:='     �1: ���.';
  grid.Columns[12].Title.caption:='     C1: ��.';
  grid.Columns[13].Title.caption:='     C1: ���.';
  grid.Columns[14].Title.caption:='     C2: ������';
  grid.Columns[15].Title.caption:='     C2: ���.';
  grid.Columns[16].Title.caption:='     C2: ��.';
  grid.Columns[17].Title.caption:='     C2: ���.';
  for i := 0 to grid.Columns.Count - 1 do
  grid.Columns[i].width :=20+grid.Canvas.TextWidth(grid.Columns[i].Title.Caption);
end;

procedure ADD_line(Query: TADOQuery);  //�������� ������
begin
  Query.Edit;
  Query.Append;
end;

procedure DEL_line(Query: TADOQuery);  //������� ������
begin
   Query.Edit;
   Query.Delete;
   Query.Edit;
   Query.Post;
end;

end.
