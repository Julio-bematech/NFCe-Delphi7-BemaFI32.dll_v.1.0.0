object Form_Pagamento: TForm_Pagamento
  Left = 190
  Top = 141
  Width = 234
  Height = 270
  Caption = 'Forma de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
  object ComboBox1: TComboBox
    Left = 56
    Top = 8
    Width = 153
    Height = 21
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 2
    Text = 'Dinheiro'
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
    TabOrder = 3
    Text = '50,00'
  end
  object EfetuaPagamento: TButton
    Left = 8
    Top = 192
    Width = 123
    Height = 25
    Caption = 'EfetuaPagamento'
    TabOrder = 0
    OnClick = EfetuaPagamentoClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 72
    Width = 201
    Height = 105
    Caption = 'Retorno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
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
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = SairClick
  end
end
