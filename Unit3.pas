unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    txt1: TStaticText;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule1.zqry1.SQL.Clear;
DataModule1.zqry1.SQL.Add('insert into kategori values (null, "'+edt1.Text+'")');
DataModule1.zqry1.ExecSQL;

DataModule1.zqry1.SQL.Clear;
DataModule1.zqry1.SQL.Add('select from kategori');
DataModule1.zqry1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule1.zqry1.SQL.Clear;
DataModule1.zqry1.SQL.Add('update kategori set name="'+edt1.text+'" where id= "'+a+'"');
DataModule1.zqry1.ExecSQL;

DataModule1.zqry1.SQL.Clear;
DataModule1.zqry1.SQL.Add('select from kategori');
DataModule1.zqry1.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule1.zqry1.SQL.Clear;
DataModule1.zqry1.SQL.Add('delete from kategori where id= "'+a+'"');
DataModule1.zqry1.ExecSQL;

DataModule1.zqry1.SQL.Clear;
DataModule1.zqry1.SQL.Add('select from kategori');
DataModule1.zqry1.Open;
ShowMessage('Data Berhasil Diupdate!');
ShowMessage('Data Berhasil Diupdate!');
end;

end.
