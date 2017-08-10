object FormIniciaFechamentoCupom: TFormIniciaFechamentoCupom
  Left = 192
  Top = 124
  Width = 257
  Height = 200
  Caption = 'Acr'#233'scimo/Desconto'
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
    Left = 24
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Escolha:'
  end
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object Label3: TLabel
    Left = 40
    Top = 80
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object ComboBoxFechamento: TComboBox
    Left = 72
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Acr'#233'scimo'
    Items.Strings = (
      'Acr'#233'scimo'
      'Desconto')
  end
  object ComboBoxTipo: TComboBox
    Left = 72
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = 'Valor ($)'
    Items.Strings = (
      'Valor ($)'
      'Porcentagem (%)')
  end
  object Edit1: TEdit
    Left = 72
    Top = 80
    Width = 73
    Height = 21
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 2
    Text = '0,00'
  end
  object BitBtnOk: TBitBtn
    Left = 120
    Top = 120
    Width = 75
    Height = 25
    TabOrder = 3
    OnClick = BitBtnOkClick
    Kind = bkOK
  end
  object ButtonSair: TButton
    Left = 32
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = ButtonSairClick
  end
end
