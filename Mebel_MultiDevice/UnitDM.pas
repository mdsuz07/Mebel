unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConn: TFDConnection;
    Kontragents: TFDQuery;
    UpdateKA: TFDUpdateSQL;
    ReadKA: TFDTransaction;
    WriteKA: TFDTransaction;
    dsKA: TDataSource;
    KontragentsID: TFDAutoIncField;
    KontragentsNAME: TStringField;
    KontragentsADDRESS: TStringField;
    KontragentsCONTACT: TStringField;
    KontragentsPHONE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
