object Menu: TMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 278
  ClientWidth = 607
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMenuPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mmMenuPrincipal: TMainMenu
    Left = 48
    Top = 40
    object miCadastro: TMenuItem
      Caption = 'Cadastro'
      object miDepartamento_Cadastro: TMenuItem
        Caption = 'Departamento'
        OnClick = miDepartamento_CadastroClick
      end
      object miEmpregado_Cadastro: TMenuItem
        Caption = 'Empregado'
        OnClick = miEmpregado_CadastroClick
      end
    end
  end
end
