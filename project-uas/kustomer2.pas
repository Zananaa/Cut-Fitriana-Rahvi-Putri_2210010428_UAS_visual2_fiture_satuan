unit kustomer2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TDataModule2 = class(TDataModule)
    dskustomer: TDataSource;
    Zconnection: TZConnection;
    Zkustomer: TZQuery;
    frxdbkustomer: TfrxDBDataset;
    frxkustomer: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
