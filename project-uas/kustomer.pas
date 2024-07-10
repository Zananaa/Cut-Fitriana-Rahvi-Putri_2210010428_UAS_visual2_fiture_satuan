unit kustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    cbb1: TComboBox;
    dbgrd1: TDBGrid;
    btn7: TButton;
    btn8: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure cbb1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: String;

implementation

uses kustomer2, DateUtils, ZDataset;

{$R *.dfm}

{ TForm1 }

procedure TForm1.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  cbb1.Text:= '- Pilih --';
  lbl9.Caption:='Terisi Otomatis';

end;

procedure TForm1.posisiawal;
begin
  bersih;
  btn1.Enabled:= True; //baru
  btn2.Enabled:= False;     //simpan
  btn3.Enabled:= False; //ubah
  btn4.Enabled:= False;       //hapus
  btn5.Enabled:= False;   //batal
  btn6.Enabled:= False;
  btn7.Enabled:= False;
  btn8.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  edt6.Enabled:= False;
  cbb1.Enabled:= False;

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False; //bru
  btn2.Enabled:= True; //simpan
  btn3.Enabled:= False; //update
  btn4.Enabled:= False; //delete
  btn5.Enabled:= True; //btn batal
  btn6.Enabled:= True;
  btn7.Enabled:= True;
  btn8.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
  cbb1.Enabled:= True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin   //btn Simpan
  if (edt2.Text = '') or (edt3.Text = '') or
     (edt4.Text = '') or (edt5.Text = '') or
     (edt6.Text = '') or (cbb1.Text = '') then
  begin
    ShowMessage('Tambah Data Kustomer Tidak Boleh Kosong!');
  end else 
  begin
  if DataModule2.Zkustomer.Locate('nik', edt2.Text, []) and
     DataModule2.Zkustomer.Locate('nama', edt3.Text, []) and
     DataModule2.Zkustomer.Locate('telp', edt4.Text, []) and
     DataModule2.Zkustomer.Locate('email', edt5.Text, []) and
     DataModule2.Zkustomer.Locate('alamat', edt6.Text, []) and
     DataModule2.Zkustomer.Locate('member', cbb1.Text, []) then
  begin
    ShowMessage('Data Kustomer Sudah Ada Didalam Sistem');
  end else
  begin
    with DataModule2.Zkustomer do
    begin
      SQL.Clear;
      SQL.Add('insert into kustomer (nik, nama, telp, email, alamat, member) values("' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '", "' + edt6.Text + '","' + cbb1.Text + '")');
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from kustomer');
      Open;
    end;
    ShowMessage('Data Berhasil Disimpan!');
  end;
end;
  posisiawal;
end;


procedure TForm1.btn3Click(Sender: TObject);
begin   // btn ubah
  if (edt2.Text = '') or (edt3.Text = '') or
     (edt4.Text = '') or (edt5.Text = '') or
     (edt6.Text = '') or (cbb1.Text = '') then
  begin 
    ShowMessage('Tambah data Kustomer Tidak Boleh Kosong!');
  end else
  begin
  if (edt2.Text = DataModule2.Zkustomer.Fields[1].AsString) and
     (edt3.Text = DataModule2.Zkustomer.Fields[2].AsString) and
     (edt4.Text = DataModule2.Zkustomer.Fields[3].AsString) and
     (edt5.Text = DataModule2.Zkustomer.Fields[4].AsString) and
     (edt6.Text = DataModule2.Zkustomer.Fields[5].AsString) and
     (cbb1.Text = DataModule2.Zkustomer.Fields[6].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end else
    begin
      
      with DataModule2.Zkustomer do
      begin
        SQL.Clear;
        SQL.Add('update kustomer set nik = "' +edt2.Text+ '", nama = "' +edt3.Text+ '", telp = "' +edt4.Text+ '", email = "' +edt5.Text+ '", alamat = "' +edt6.Text+ '", member = "' +cbb1.Text+ '" where id = "' +a+ '"');
        ExecSQL;

        SQL.Clear;
        SQL.Add('select * from kustomer');
        Open;
      end;
      ShowMessage('Data Berhasil Diupdate!');
    end;
  end;
  posisiawal;
end;


procedure TForm1.btn4Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
    with DataModule2.Zkustomer do
    begin
    SQL.Clear;
    SQL.Add('delete from kustomer where id= "'+a+'"');
    ExecSQL ;

    SQL.Clear;
    SQL.Add('select * from kustomer');
    Open;
    end;
    ShowMessage('Data Berhasil Dihapus!!!');
  end else
  begin
    ShowMessage('Data Batal Dihapus!!');
  end;
    posisiawal;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
 bersih;
 posisiawal;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt2.Text:= DataModule2.Zkustomer.Fields[1].AsString;
  edt3.Text:= DataModule2.Zkustomer.Fields[2].AsString;
  edt4.Text:= DataModule2.Zkustomer.Fields[3].AsString;
  edt5.Text:= DataModule2.Zkustomer.Fields[4].AsString;
  edt6.Text:= DataModule2.Zkustomer.Fields[5].AsString;
  cbb1.Text:= DataModule2.Zkustomer.Fields[6].AsString;
  if cbb1.Text = 'Yes' then
  begin
    lbl9.Caption :='10%'
  end else
  if cbb1.Text = 'No' then
  begin
   lbl9.Caption :='5%'
  end;

  a:= DataModule2.Zkustomer.Fields[0].AsString;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
  cbb1.Enabled:= True;
  btn1.Enabled:= False;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
  btn6.Enabled:= True;
  btn7.Enabled:= True;
  btn8.Enabled:= True;
  lbl9.Enabled:= True;
end;


procedure TForm1.cbb1Change(Sender: TObject);
var
  pilih: Integer;
begin
  begin
    pilih := cbb1.ItemIndex;
    case pilih of
    0 : lbl9.Caption := '10%';
    1 : lbl9.Caption := '5%';
    end;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  posisiawal;
  bersih;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if (edt1.Text= '') then
  begin
    ShowMessage('Pencarian Tidak Boleh Kosong!!');
  end else
  if not DataModule2.Zkustomer.Locate('nama',edt1.Text ,[])then
  begin
    ShowMessage('Pencarian Data Tidak Tersedia');
  end else
  begin
    with DataModule2.Zkustomer do
    begin
      SQL.Clear;
      SQL.Add ('SELECT * FROM kustomer WHERE nama LIKE "'+edt1.Text+'"');
      ExecSQL;
      Open;
    end;
  end;
end;


procedure TForm1.btn7Click(Sender: TObject);
begin
  DataModule2.frxkustomer.ShowReport();
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  posisiawal;
  with DataModule2.Zkustomer do
    begin
      SQL.Clear;
      SQL.Add ('SELECT * FROM kustomer WHERE nama LIKE "%'+edt1.Text+'%"');
      ExecSQL;
      Open;
    end;
end;

end.
