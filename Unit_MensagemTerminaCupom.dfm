object FormTerminaFechamentoCupom: TFormTerminaFechamentoCupom
  Left = 230
  Top = 151
  Width = 348
  Height = 271
  Caption = 'FormTerminaFechamentoCupom'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 113
    Height = 13
    Caption = 'Mensagem Promocional'
  end
  object Label2: TLabel
    Left = 208
    Top = 128
    Width = 99
    Height = 13
    Caption = '8 linhas x 48 colunas'
  end
  object Label3: TLabel
    Left = 104
    Top = 160
    Width = 107
    Height = 13
    Caption = 'Valor Total de Tributos'
  end
  object Mensagem: TMemo
    Left = 8
    Top = 40
    Width = 305
    Height = 89
    Lines.Strings = (
      'Obrigado, volte sesmpre!')
    TabOrder = 1
  end
  object BitBtnOK: TBitBtn
    Left = 240
    Top = 200
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtnOKClick
    Kind = bkOK
  end
  object Limpar: TButton
    Left = 144
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = LimparClick
  end
  object Edit1: TEdit
    Left = 224
    Top = 160
    Width = 89
    Height = 21
    TabOrder = 3
    Text = '0,42'
  end
end
