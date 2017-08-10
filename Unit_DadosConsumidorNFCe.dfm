object Form_DadosConsumidorNFCe: TForm_DadosConsumidorNFCe
  Left = 192
  Top = 124
  Width = 417
  Height = 472
  Caption = 'Exemplo DadosConsumidorNFCe'
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 369
    Height = 265
    Caption = 'DadosConsumidorNFCe'
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 20
      Height = 13
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 144
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 46
      Height = 13
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 72
      Width = 64
      Height = 13
      Caption = 'Complemento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 248
      Top = 72
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 96
      Width = 27
      Height = 13
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 232
      Top = 96
      Width = 50
      Height = 13
      Caption = 'C'#243'd. IBGE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 120
      Width = 33
      Height = 13
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 264
      Top = 120
      Width = 21
      Height = 13
      Caption = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 120
      Top = 168
      Width = 65
      Height = 13
      Caption = 'Ind. Insc. Est.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 192
      Width = 10
      Height = 13
      Caption = 'IE'
    end
    object Label12: TLabel
      Left = 184
      Top = 192
      Width = 77
      Height = 13
      Caption = 'C'#243'd. SUFRAMA'
    end
    object Label14: TLabel
      Left = 8
      Top = 216
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object Label15: TLabel
      Left = 208
      Top = 120
      Width = 14
      Height = 13
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 8
      Top = 144
      Width = 44
      Height = 13
      Caption = 'C'#243'd Pa'#237's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 128
      Top = 144
      Width = 22
      Height = 13
      Caption = 'Pa'#237's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 8
      Top = 168
      Width = 18
      Height = 13
      Caption = 'Tel.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 48
      Top = 24
      Width = 89
      Height = 21
      Hint = 
        'Char pointer com o CPF ou CNPJ do consumidor. Tamanho m'#225'ximo de ' +
        '20 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '28713011669'
    end
    object Edit2: TEdit
      Left = 184
      Top = 24
      Width = 169
      Height = 21
      Hint = 
        'Char pointer com o nome do consumidor. Tamanho m'#225'ximo de 60 cara' +
        'cteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'Jos'#233' da Silva'
    end
    object Edit3: TEdit
      Left = 64
      Top = 48
      Width = 289
      Height = 21
      Hint = 
        'Char pointer com o endere'#231'o do consumidor. Tamanho m'#225'ximo de 60 ' +
        'caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = 'Rua Sem Fim, 100'
    end
    object Edit4: TEdit
      Left = 88
      Top = 72
      Width = 153
      Height = 21
      Hint = 
        'Char pointer com o complemento do endere'#231'o. Tamanho m'#225'ximo de 60' +
        ' caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = 'Casa'
    end
    object Edit5: TEdit
      Left = 296
      Top = 72
      Width = 57
      Height = 21
      Hint = 
        'Char pointer com o n'#250'mero do endere'#231'o. Tamanho m'#225'ximo de 15 cara' +
        'cteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = '100'
    end
    object Edit6: TEdit
      Left = 48
      Top = 96
      Width = 177
      Height = 21
      Hint = 
        'Char pointer com o bairro do consumidor. Tamanho m'#225'ximo de 60 ca' +
        'racteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = 'Vila Jardim'
    end
    object Edit7: TEdit
      Left = 296
      Top = 96
      Width = 57
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo de cidades do IBGE. Tamanho de 7 carac' +
        'teres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '4106902'
    end
    object Edit8: TEdit
      Left = 48
      Top = 120
      Width = 153
      Height = 21
      Hint = 
        'Char pointer com a cidade do consumidor. Tamanho m'#225'ximo de 60 ca' +
        'racteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = 'Curitiba'
    end
    object Edit9: TEdit
      Left = 296
      Top = 120
      Width = 57
      Height = 21
      Hint = 
        'Char pointer com CEP. Tamanho de 8 caracteres. Este par'#226'metro po' +
        'de ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Text = '81100100'
    end
    object ComboBox1: TComboBox
      Left = 208
      Top = 168
      Width = 145
      Height = 21
      Hint = 'Char pointer com o indicador de inscri'#231#227'o estadual.'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      Text = '1 - Contribuinte de ICMS'
      Items.Strings = (
        '1 - Contribuinte de ICMS'
        '2- Isento')
    end
    object Edit10: TEdit
      Left = 24
      Top = 192
      Width = 153
      Height = 21
      Hint = 
        'Char pointer com o inscri'#231#227'o estadual do consumidor. Tamanho de ' +
        '14 caracteres. Este par'#226'metro pode ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object Edit11: TEdit
      Left = 264
      Top = 192
      Width = 89
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo SUFRAMA. Tamanho de 9 caracteres. Este' +
        ' par'#226'metro pode ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object Edit12: TEdit
      Left = 40
      Top = 216
      Width = 313
      Height = 21
      Hint = 
        'Char pointer com o e-mail do consumidor. Tamanho de 60 caractere' +
        's. Este par'#226'metro pode ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object Edit13: TEdit
      Left = 232
      Top = 120
      Width = 25
      Height = 21
      Hint = 
        'Char pointer com a unidade federativa do consumidor. Tamanho de ' +
        '2 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Text = 'PR'
    end
    object Edit14: TEdit
      Left = 64
      Top = 144
      Width = 57
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo do pa'#237's do consumidor. Tamanho de 4 ca' +
        'racteres. Este par'#226'metro pode ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Text = '1058'
    end
    object Edit15: TEdit
      Left = 160
      Top = 144
      Width = 193
      Height = 21
      Hint = 
        'Char pointer com o pa'#237's do consumidor. Tamanho de 60 caracteres.' +
        ' Este par'#226'metro pode ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Text = 'Brasil'
    end
    object Edit16: TEdit
      Left = 32
      Top = 168
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o telefone do consumidor. Tamanho de 14 caracte' +
        'res. Este par'#226'metro pode ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 320
    Width = 369
    Height = 97
    Caption = 'Retorno das Fun'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Memo1: TMemo
      Left = 24
      Top = 16
      Width = 329
      Height = 73
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object DadosConsumidorNFCe: TButton
    Left = 224
    Top = 288
    Width = 161
    Height = 25
    Caption = 'DadosConsumidorNFCe'
    TabOrder = 0
    OnClick = DadosConsumidorNFCeClick
  end
  object Limpar: TButton
    Left = 112
    Top = 288
    Width = 105
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = LimparClick
  end
end
