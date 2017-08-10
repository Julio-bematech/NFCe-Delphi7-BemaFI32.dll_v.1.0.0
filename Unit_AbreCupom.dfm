object Form_AbreCupom: TForm_AbreCupom
  Left = 192
  Top = 124
  Width = 278
  Height = 166
  Caption = 'AbreCupom'
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
    Left = 16
    Top = 16
    Width = 52
    Height = 13
    Caption = 'CPF/CNPJ'
  end
  object Label2: TLabel
    Left = 40
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 24
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Edit1: TEdit
    Left = 88
    Top = 16
    Width = 153
    Height = 21
    TabOrder = 1
    Text = '80871740540'
  end
  object AbreCupom: TButton
    Left = 168
    Top = 96
    Width = 75
    Height = 25
    Caption = 'AbreCupom'
    TabOrder = 0
    OnClick = AbreCupomClick
  end
  object Apagar: TButton
    Left = 80
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Apagar'
    TabOrder = 2
    OnClick = ApagarClick
  end
  object Edit2: TEdit
    Left = 88
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 3
    Text = 'Jo'#227'o da Silva'
  end
  object Edit3: TEdit
    Left = 88
    Top = 64
    Width = 153
    Height = 21
    TabOrder = 4
    Text = 'Rua Sem Fim, 100'
  end
end
