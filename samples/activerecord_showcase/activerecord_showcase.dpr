program activerecord_showcase;

uses
  Vcl.Forms,
  MainFormU in 'MainFormU.pas' {MainForm},
  MVCFramework.ActiveRecord in '..\..\sources\MVCFramework.ActiveRecord.pas',
  EntitiesU in 'EntitiesU.pas',
  FDConnectionConfigU in 'FDConnectionConfigU.pas',
  MVCFramework.RQL.AST2FirebirdSQL in '..\..\sources\MVCFramework.RQL.AST2FirebirdSQL.pas',
  MVCFramework.SQLGenerators.MySQL in '..\..\sources\MVCFramework.SQLGenerators.MySQL.pas',
  MVCFramework.SQLGenerators.Firebird in '..\..\sources\MVCFramework.SQLGenerators.Firebird.pas',
  MVCFramework.RQL.AST2MySQL in '..\..\sources\MVCFramework.RQL.AST2MySQL.pas',
  MVCFramework.RQL.AST2InterbaseSQL in '..\..\sources\MVCFramework.RQL.AST2InterbaseSQL.pas',
  MVCFramework.RQL.AST2PostgreSQL in '..\..\sources\MVCFramework.RQL.AST2PostgreSQL.pas',
  MVCFramework.SQLGenerators.PostgreSQL in '..\..\sources\MVCFramework.SQLGenerators.PostgreSQL.pas',
  MVCFramework.RQL.AST2MSSQL in '..\..\sources\MVCFramework.RQL.AST2MSSQL.pas',
  MVCFramework.SQLGenerators.MSSQL in '..\..\sources\MVCFramework.SQLGenerators.MSSQL.pas',
  MVCFramework.RQL.Parser in '..\..\sources\MVCFramework.RQL.Parser.pas',
  MVCFramework.SQLGenerators.Sqlite in '..\..\sources\MVCFramework.SQLGenerators.Sqlite.pas',
  MVCFramework.RQL.AST2SQLite in '..\..\sources\MVCFramework.RQL.AST2SQLite.pas';

{$R *.res}


begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;

end.
