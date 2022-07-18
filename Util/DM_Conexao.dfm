object DM_Conexao: TDM_Conexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 254
  Width = 592
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=prova_dev'
      'Password=postgres'
      'Server=localhost'
      'User_Name=postgres'
      'ApplicationName='
      'Port=5433'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 208
    Top = 96
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'C:\Delphi\Prova_Dev\Win32\Debug'
    VendorLib = 'libpq.dll'
    Left = 288
    Top = 104
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT '
      '* FROM '
      'DEP WHERE teste =  :TESTE')
    Left = 160
    Top = 158
    ParamData = <
      item
        Name = 'TESTE'
        ParamType = ptInput
      end>
  end
end
