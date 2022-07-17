object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 278
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMenuPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmMenuPrincipal: TMainMenu
    Left = 48
    Top = 40
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Departamentos2: TMenuItem
        Caption = 'Departamentos'
      end
      object Empregados1: TMenuItem
        Caption = 'Empregados'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Empregados2: TMenuItem
        Caption = 'Empregados'
      end
      object Departamentos1: TMenuItem
        Caption = 'Departamentos'
      end
    end
  end
end
