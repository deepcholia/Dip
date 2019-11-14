unit Uplan_procedures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls;

procedure BaseLoad(Query: TADOQuery; TQuery:string;grid:TDBGrid;SNumb_1,SNumb_2:string);
procedure TDBGrid_to_StringGrid(grid:TDBGrid;sgrid:TStringGrid;SNumb_1,SNumb_2:string);
procedure ADD_line(Query: TADOQuery);
procedure DEL_line(Query: TADOQuery);
procedure Change_ADDDEL(BA1,BA2,BA3,BA4,BD1,BD2,BD3,BD4:TButton);
procedure Change_TDBGrid(grid1,grid2,grid3,grid4:TDBGrid; Query: TADOQuery);


implementation

procedure BaseLoad(Query: TADOQuery; TQuery:string;grid:TDBGrid;SNumb_1,SNumb_2:string);  //Загрузка базы дисциплины в грид
var
  i:integer;
begin
  Query.SQL.Text:=TQuery;
  Query.Active:=true;
  grid.Columns[0].Title.caption:='     Индекс';
  grid.Columns[1].Title.caption:='     Наименование';
  grid.Columns[2].Title.caption:='     Экзамен';
  grid.Columns[3].Title.caption:='     Зачет';
  grid.Columns[4].Title.caption:='     Зачет с оценкой';
  grid.Columns[5].Title.caption:='     Курсовая работа';
  grid.Columns[6].Title.caption:='     Курсовой проект';
  grid.Columns[7].Title.caption:='     ЗЕТ';
  grid.Columns[8].Title.caption:='     Часов в ЗЕТ';
  grid.Columns[9].Title.caption:='     Контакт. часы';
  grid.Columns[10].Title.caption:='     '+SNumb_1+': Лекции';
  grid.Columns[11].Title.caption:='     '+SNumb_1+': Лаб.';
  grid.Columns[12].Title.caption:='     '+SNumb_1+': Пр.';
  grid.Columns[13].Title.caption:='     '+SNumb_1+': Сам.';
  grid.Columns[14].Title.caption:='     '+SNumb_1+': Часы конт.';
  grid.Columns[15].Title.caption:='     '+SNumb_2+': Лекции';
  grid.Columns[16].Title.caption:='     '+SNumb_2+': Лаб.';
  grid.Columns[17].Title.caption:='     '+SNumb_2+': Пр.';
  grid.Columns[18].Title.caption:='     '+SNumb_2+': Сам.';
  grid.Columns[19].Title.caption:='     '+SNumb_2+': Часы конт.';
  for i := 0 to grid.Columns.Count - 1 do
  grid.Columns[i].width :=20+grid.Canvas.TextWidth(grid.Columns[i].Title.Caption);
end;

Procedure TDBGrid_to_StringGrid(grid:TDBGrid;sgrid:TStringGrid;SNumb_1,SNumb_2:string);
  var
  i,j: integer;
  w: integer;
  MaxWidth: integer;
begin
  //Запись из TDBGrid в StringGrid
  j := 1;
  begin
  grid.DataSource.DataSet.First;
  while not grid.DataSource.DataSet.Eof do
  begin
    for i := 0 to grid.Columns.Count - 1 do
    if (grid.DataSource.DataSet.Fields[11].isNull = false) or (grid.DataSource.DataSet.Fields[12].isNull = false) or (grid.DataSource.DataSet.Fields[13].isNull= false) or (grid.DataSource.DataSet.Fields[14].isNull= false) or (grid.DataSource.DataSet.Fields[16].isNull = false) or (grid.DataSource.DataSet.Fields[17].isNull = false) or (grid.DataSource.DataSet.Fields[18].isNull= false) or (grid.DataSource.DataSet.Fields[19].isNull= false) then
    begin
      sgrid.Cells[i, j] := grid.DataSource.DataSet.Fields[i].AsString;
      sgrid.Cells[i, 0] :=grid.Columns[i].Title.caption;
    end;
    Inc(j);
    grid.DataSource.DataSet.Next;
    sgrid.RowCount:= sgrid.RowCount + 1 ;
  end;
   sgrid.RowCount:= sgrid.RowCount -1;
  end;
  //Размер ячеек
    with sgrid do
    begin
      for i := 0 to ColCount - 1 do
      begin
        MaxWidth := 0;
        for j := 0 to RowCount - 1 do
        begin
          w := Canvas.TextWidth(Cells[i,j]);
          if w > MaxWidth then
            MaxWidth := w;
        end;
        ColWidths[i] := MaxWidth + 20;
      end;
    end;
  //Удаление пустых строк
  i:= 0;
  while i <= sgrid.RowCount - 1 do
  begin
    if Trim(sgrid.Rows[i].Text) = '' then
    begin
      for j:= i to sgrid.RowCount - 1 do
        sgrid.Rows[j]:= sgrid.Rows[j+1];
      sgrid.RowCount:= sgrid.RowCount - 1;
    end
    else
      Inc(i);
  end;
end;

procedure ADD_line(Query: TADOQuery);  //Добавить строку
begin
  Query.Edit;
  Query.Append;
end;

procedure DEL_line(Query: TADOQuery);  //Удалить строку
begin
   Query.Edit;
   Query.Delete;
   Query.Edit;
   Query.Post;
end;

procedure Change_TDBGrid(grid1,grid2,grid3,grid4:TDBGrid; Query: TADOQuery);
begin
  grid1.Visible:=true;
  grid2.Visible:=false;
  grid3.Visible:=false;
  grid4.Visible:=false;
  Query.Edit;
  Query.Post;
end;


procedure Change_ADDDEL(BA1,BA2,BA3,BA4,BD1,BD2,BD3,BD4:TButton);
begin
  BA1.Visible:=true;
  BA2.Visible:=false;
  BA3.Visible:=false;
  BA4.Visible:=false;
  BD1.Visible:=true;
  BD2.Visible:=false;
  BD3.Visible:=false;
  BD4.Visible:=false;
end;

end.
