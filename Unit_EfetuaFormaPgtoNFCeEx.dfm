object FormEfetuaPagamentoNFCeEx: TFormEfetuaPagamentoNFCeEx
  Left = 191
  Top = 158
  Width = 406
  Height = 321
  Caption = 'Forma de Pagamento NT 2015.002'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label2: TLabel
    Left = 32
    Top = 48
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label3: TLabel
    Left = 160
    Top = 48
    Width = 99
    Height = 13
    Caption = 'CNPJ Credenciadora'
  end
  object Label4: TLabel
    Left = 160
    Top = 16
    Width = 42
    Height = 13
    Caption = 'Bandeira'
  end
  object Label5: TLabel
    Left = 8
    Top = 80
    Width = 107
    Height = 13
    Caption = 'C'#243'digo de Autoriza'#231#227'o'
  end
  object Edit1: TEdit
    Left = 64
    Top = 16
    Width = 81
    Height = 21
    TabOrder = 0
    Text = 'Cartao Credito'
  end
  object Edit2: TEdit
    Left = 64
    Top = 48
    Width = 73
    Height = 21
    TabOrder = 1
    Text = '50,00'
  end
  object EditCnpjCred: TEdit
    Left = 264
    Top = 48
    Width = 113
    Height = 21
    TabOrder = 2
    Text = '01425787000101'
  end
  object ComboBoxBandeira: TComboBox
    Left = 208
    Top = 16
    Width = 169
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = '01 - Visa'
    OnChange = ComboBoxBandeiraChange
    Items.Strings = (
      '01 - Visa'
      '02 - Mastercard'
      '03 - American Express'
      '04 - Sorocred'
      '99 - Outros'
      'Dinheiro'
      '(vazio)')
  end
  object Edit4: TEdit
    Left = 120
    Top = 80
    Width = 257
    Height = 21
    TabOrder = 4
  end
  object RadioGroupIntegra: TRadioGroup
    Left = 8
    Top = 112
    Width = 369
    Height = 121
    Caption = 'C'#243'digo de Integra'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 2
    Items.Strings = (
      
        '0 - N'#227'o informar'#225' o tipo de integra'#231#227'o nem os par'#226'metros de CNPJ' +
        ' da credenciadora, c'#243'digo da credenciadora e c'#243'digo de autoriza'#231 +
        #227'o'
      '1 - Pagamento integrado com o sistema de automa'#231#227'o da empresa'
      
        '2 - Pagamento n'#227'o integrado com o sistema de automa'#231#227'o da empres' +
        'a')
    ParentFont = False
    TabOrder = 5
  end
  object BitBtnOK: TBitBtn
    Left = 296
    Top = 240
    Width = 75
    Height = 25
    TabOrder = 6
    OnClick = BitBtnOKClick
    Kind = bkOK
  end
  object ButtonLimpa: TButton
    Left = 120
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Limpar'
    ModalResult = 1
    TabOrder = 7
    OnClick = ButtonLimpaClick
  end
  object Sair: TButton
    Left = 208
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 8
    OnClick = SairClick
  end
end
