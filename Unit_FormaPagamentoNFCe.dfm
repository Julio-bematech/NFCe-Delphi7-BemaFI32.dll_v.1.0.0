object Form_PagamentoNFCe: TForm_PagamentoNFCe
  Left = 190
  Top = 141
  Width = 234
  Height = 310
  Caption = 'Forma de Pagamento'
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
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Forma'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 73
    Height = 13
    Caption = 'CNPJ Credenc.'
  end
  object Label4: TLabel
    Left = 8
    Top = 80
    Width = 68
    Height = 13
    Caption = 'C'#243'd. Credenc.'
  end
  object Label5: TLabel
    Left = 8
    Top = 104
    Width = 81
    Height = 13
    Caption = 'C'#243'd. Autoriza'#231#227'o'
  end
  object ComboBox1: TComboBox
    Left = 56
    Top = 8
    Width = 153
    Height = 21
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 1
    Text = 'Cartao Credito (V)'
    Items.Strings = (
      'Escolha...'
      'Dinheiro'
      'Cheque'
      'Cartao Credito (V)'
      'Cartao Debito (V)'
      'Credito Loja'
      'Vale Aliment. (V)'
      'Vale Refeicao (V)'
      'Vale Presente'
      'Vale Combust.'
      'Outros')
  end
  object Edit1: TEdit
    Left = 88
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '50,00'
  end
  object EfetuaPagamentoNFCe: TButton
    Left = 8
    Top = 240
    Width = 123
    Height = 25
    Caption = 'EfetuaPagamentoNFCe'
    TabOrder = 0
    OnClick = EfetuaPagamentoNFCeClick
  end
  object Edit2: TEdit
    Left = 88
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '25.573.693/0001-32'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 128
    Width = 201
    Height = 105
    Caption = 'Retorno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Memo1: TMemo
      Left = 8
      Top = 16
      Width = 185
      Height = 81
      Color = clInfoBk
      Lines.Strings = (
        '')
      TabOrder = 0
    end
  end
  object Sair: TButton
    Left = 136
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 6
    OnClick = SairClick
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 4
    Text = 'Visa'
    Items.Strings = (
      'Escolha...'
      'Visa'
      'Mastercard'
      'American Express'
      'Sorocred'
      'Outros')
  end
  object Edit3: TEdit
    Left = 96
    Top = 104
    Width = 113
    Height = 21
    TabOrder = 5
    Text = '1111111111'
  end
end
