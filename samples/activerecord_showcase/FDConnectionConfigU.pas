unit FDConnectionConfigU;

interface

const
  CON_DEF_NAME = 'MyConnX';

procedure CreateFirebirdPrivateConnDef(AIsPooled: boolean);
procedure CreateMySQLPrivateConnDef(AIsPooled: boolean);
procedure CreatePostgresqlPrivateConnDef(AIsPooled: boolean);
procedure CreateSqlitePrivateConnDef(AIsPooled: boolean);

implementation

uses
  System.Classes,
  System.IOUtils,
  FireDAC.Comp.Client;

procedure CreateMySQLPrivateConnDef(AIsPooled: boolean);
var
  LParams: TStringList;
begin
  LParams := TStringList.Create;
  try
    LParams.Add('Database=activerecorddb');
    LParams.Add('Protocol=TCPIP');
    LParams.Add('Server=localhost');
    LParams.Add('User_Name=root');
    LParams.Add('Password=root');
    LParams.Add('TinyIntFormat=Boolean'); { it's the default }
    if AIsPooled then
    begin
      LParams.Add('Pooled=True');
      LParams.Add('POOL_MaximumItems=100');
    end
    else
    begin
      LParams.Add('Pooled=False');
    end;
    FDManager.AddConnectionDef(CON_DEF_NAME, 'MySQL', LParams);
  finally
    LParams.Free;
  end;
end;

procedure CreateFirebirdPrivateConnDef(AIsPooled: boolean);
var
  LParams: TStringList;
begin
  LParams := TStringList.Create;
  try
    LParams.Add('Database=' + TPath.GetFullPath(TPath.Combine('..\..', 'data\ACTIVERECORDDB.FDB')));
    LParams.Add('Protocol=TCPIP');
    LParams.Add('Server=localhost');
    LParams.Add('User_Name=sysdba');
    LParams.Add('Password=masterkey');
    if AIsPooled then
    begin
      LParams.Add('Pooled=True');
      LParams.Add('POOL_MaximumItems=100');
    end
    else
    begin
      LParams.Add('Pooled=False');
    end;
    FDManager.AddConnectionDef(CON_DEF_NAME, 'FB', LParams);
  finally
    LParams.Free;
  end;
end;

procedure CreatePostgresqlPrivateConnDef(AIsPooled: boolean);
var
  LParams: TStringList;
begin
  LParams := TStringList.Create;
  try
    LParams.Add('Database=activerecorddb');
    LParams.Add('Protocol=TCPIP');
    LParams.Add('Server=localhost');
    LParams.Add('User_Name=postgres');
    LParams.Add('Password=daniele');
    if AIsPooled then
    begin
      LParams.Add('Pooled=True');
      LParams.Add('POOL_MaximumItems=100');
    end
    else
    begin
      LParams.Add('Pooled=False');
    end;
    FDManager.AddConnectionDef(CON_DEF_NAME, 'PG', LParams);
  finally
    LParams.Free;
  end;
end;

procedure CreateSqlitePrivateConnDef(AIsPooled: boolean);
var
  LParams: TStringList;
begin
  LParams := TStringList.Create;
  try
    LParams.Add('Database=C:\DEV\dmvcframework\samples\data\activerecorddb.db');
    if AIsPooled then
    begin
      LParams.Add('Pooled=True');
      LParams.Add('POOL_MaximumItems=100');
    end
    else
    begin
      LParams.Add('Pooled=False');
    end;
    FDManager.AddConnectionDef(CON_DEF_NAME, 'SQLite', LParams);
  finally
    LParams.Free;
  end;
end;

end.
