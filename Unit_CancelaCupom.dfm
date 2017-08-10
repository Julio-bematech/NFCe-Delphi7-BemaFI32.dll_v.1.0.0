object FormCancelaCupomFechado: TFormCancelaCupomFechado
  Left = 192
  Top = 124
  Width = 313
  Height = 219
  Caption = 'Cancela Cupom Fechado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 136
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object Edit1: TEdit
    Left = 72
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '80871740540'
  end
  object Edit2: TEdit
    Left = 72
    Top = 64
    Width = 201
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 72
    Top = 96
    Width = 201
    Height = 21
    TabOrder = 3
  end
  object Limpar: TButton
    Left = 80
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = LimparClick
  end
end
