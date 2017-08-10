object FormVinculado: TFormVinculado
  Left = 192
  Top = 124
  Width = 302
  Height = 158
  Caption = 'Forma de Pagamento'
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
    Left = 16
    Top = 8
    Width = 100
    Height = 13
    Caption = 'Forma de pagamento'
  end
  object Valor: TLabel
    Left = 88
    Top = 40
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 8
    Width = 153
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Escolha...'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Escolha...'
      'Cartao Credito (V)'
      'Cartao Debito (V)'
      'Vale Aliment. (V)'
      'Vale Refeicao (V)'
      '')
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 80
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object Button1: TButton
    Left = 56
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 120
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
