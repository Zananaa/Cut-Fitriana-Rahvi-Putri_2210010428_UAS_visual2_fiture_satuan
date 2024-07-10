program fiture_member;

uses
  Forms,
  kustomer in 'kustomer.pas' {Form1},
  kustomer2 in 'kustomer2.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
