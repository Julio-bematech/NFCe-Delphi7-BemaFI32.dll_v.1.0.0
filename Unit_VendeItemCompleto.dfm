object Form_VIC: TForm_VIC
  Left = 209
  Top = 159
  Width = 787
  Height = 607
  Caption = 'VendeItemCompleto'
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 241
    Height = 513
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 34
      Height = 13
      Caption = 'EAN13'
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 58
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 80
      Width = 74
      Height = 13
      Caption = #205'ndice Depto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 104
      Width = 47
      Height = 13
      Caption = 'Aliquota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 128
      Width = 76
      Height = 13
      Caption = 'Unid. Medida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 152
      Width = 95
      Height = 13
      Caption = 'Tipo Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 176
      Width = 132
      Height = 13
      Caption = 'Quant. Casas Decimais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 200
      Width = 66
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 224
      Width = 123
      Height = 13
      Caption = 'Valor Casas Decimais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 248
      Width = 78
      Height = 13
      Caption = 'Valor Unit'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 16
      Top = 272
      Width = 114
      Height = 13
      Caption = 'Opera'#231#227'o Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 16
      Top = 296
      Width = 76
      Height = 13
      Caption = 'Valor Acr'#233'scimo'
    end
    object Label14: TLabel
      Left = 16
      Top = 320
      Width = 73
      Height = 13
      Caption = 'Valor Desconto'
    end
    object Label15: TLabel
      Left = 16
      Top = 400
      Width = 28
      Height = 13
      Caption = 'NCM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 112
      Top = 400
      Width = 33
      Height = 13
      Caption = 'CFOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 16
      Top = 432
      Width = 61
      Height = 13
      Caption = 'Inf. Adicional'
    end
    object Label18: TLabel
      Left = 16
      Top = 464
      Width = 88
      Height = 13
      Caption = 'Origem Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 96
      Top = 8
      Width = 129
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo do produto. Tamanho entre 3 e 14 carac' +
        'teres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '1234567890'
    end
    object Edit2: TEdit
      Left = 96
      Top = 32
      Width = 129
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo EAN13. Tamanho m'#225'ximo de 15 caracteres' +
        '. (14 caracteres para VirtualECF 09/09)'
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 96
      Top = 56
      Width = 129
      Height = 21
      Hint = 
        'Char pointer com a descri'#231#227'o do produto. Tamanho m'#225'ximo de 233 c' +
        'aracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = 'AGUA MINERAL SEM GAS - COPO 200 ML'
    end
    object Edit4: TEdit
      Left = 96
      Top = 80
      Width = 129
      Height = 21
      Hint = 
        'Char pointer com o '#237'ndice do departamento. Tamanho m'#225'ximo de 2 c' +
        'aracteres num'#233'ricos.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '00'
    end
    object Edit5: TEdit
      Left = 96
      Top = 104
      Width = 129
      Height = 21
      Hint = 
        'Char pointer com a al'#237'quota do produto. A fun'#231#227'o aceita tanto o ' +
        'valor quanto o '#237'ndice da al'#237'quota. Se o tamanho do parametro for' +
        ' igual a 2 considera como o '#237'ndice da al'#237'quota exceto NN, II, FF' +
        ', caso contr'#225'rio considera como sendo o valor da al'#237'quota.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 'F1'
    end
    object Edit6: TEdit
      Left = 96
      Top = 128
      Width = 129
      Height = 21
      Hint = 
        'Char pointer com a unidade de medida. Tamanho m'#225'ximo de 7 caract' +
        'eres. (3 caracteres para VirtualECF 09/09)'
      TabOrder = 5
      Text = 'UN'
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 152
      Width = 113
      Height = 21
      Hint = 'Char pointer com o tipo de quantidade.'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = 'I - Inteiro'
      Items.Strings = (
        'I - Inteiro'
        'F - Fracional')
    end
    object Edit7: TEdit
      Left = 152
      Top = 176
      Width = 73
      Height = 21
      Hint = 
        'Char pointer contendo o n'#250'mero de casas decimais. O intervalo '#233' ' +
        'entre 0 e 6.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '2'
    end
    object Edit8: TEdit
      Left = 152
      Top = 200
      Width = 73
      Height = 21
      Hint = 
        'Char pointer com a quantidade do produto. Tamanho m'#225'ximo de 7 ca' +
        'racteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Text = '1,00'
    end
    object Edit9: TEdit
      Left = 152
      Top = 224
      Width = 73
      Height = 21
      Hint = 
        'Char pointer com as casas decimais do valor unit'#225'rio. O interval' +
        'o '#233' entre 0 e 6.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Text = '2'
    end
    object Edit10: TEdit
      Left = 144
      Top = 248
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor unit'#225'rio do produto. Tamanho m'#225'ximo de ' +
        '8 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Text = '1,00'
    end
    object ComboBox2: TComboBox
      Left = 136
      Top = 272
      Width = 89
      Height = 21
      Hint = 
        'Char pointer indicando uma opera'#231#227'o de acr'#233'scimo '#39'A'#39' ou desconto' +
        ' '#39'D'#39'. Tamanho de 1 caractere.'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Text = 'Valor $'
      Items.Strings = (
        'Valor $'
        'Porcent. %')
    end
    object Edit11: TEdit
      Left = 144
      Top = 296
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor ou percentual para acr'#233'scimo. Tamanho m' +
        #225'ximo de 8 caracteres num'#233'ricos para valor e 4 para porcentagem.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Text = '0,00'
    end
    object Edit12: TEdit
      Left = 144
      Top = 320
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor ou percentual para desconto. Tamanho m'#225 +
        'ximo de 8 caracteres num'#233'ricos para valor e 4 para porcentagem.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      Text = '0,00'
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 352
      Width = 217
      Height = 33
      Hint = 
        'Char pointer com o indicador do tipo de c'#225'lculo. Tamanho m'#225'ximo ' +
        'de 1 caractere.'
      Caption = 'Tipo de C'#225'lculo'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Arredondamento'
        'Truncamento')
      ParentFont = False
      TabOrder = 14
    end
    object Edit13: TEdit
      Left = 48
      Top = 400
      Width = 57
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo NCM. Tamanho entre 2 e 8 caracteres. P' +
        'ara vendas com ISS, este c'#243'digo deve ser 99.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      Text = '22011000'
    end
    object Edit14: TEdit
      Left = 152
      Top = 400
      Width = 73
      Height = 21
      Hint = 'Char pointer com o c'#243'digo CFOP. Tamanho de 4 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      Text = '5102'
    end
    object Edit15: TEdit
      Left = 88
      Top = 432
      Width = 137
      Height = 21
      Hint = 
        'Char pointer com informa'#231#245'es adicionais do produto. Tamanho m'#225'xi' +
        'mo de 80 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      Text = 'INFORMA'#199#213'ES'
    end
    object ComboBox3: TComboBox
      Left = 16
      Top = 480
      Width = 209
      Height = 21
      Hint = 
        'Char pointer com a origem do produto. Tamanho de 1 caractere. Es' +
        'te par'#226'metro deve ser usado somente em opera'#231#245'es de ICMS. Para o' +
        'pera'#231#245'es de ISS, deve ser nulo.'
      ItemHeight = 13
      ItemIndex = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
      Text = '0 - Nacional'
      Items.Strings = (
        'Sem origem (nulo)'
        '0 - Nacional'
        '1 - Estrangeira -Importa'#231#227'o direta'
        '2 - Estrangeira -Mercado interno')
    end
  end
  object Panel2: TPanel
    Left = 256
    Top = 8
    Width = 249
    Height = 513
    TabOrder = 2
    object Label23: TLabel
      Left = 8
      Top = 64
      Width = 117
      Height = 13
      Caption = 'Ind. Incentivo Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 8
      Top = 88
      Width = 84
      Height = 13
      Caption = 'Item Lista Servi'#231'o'
    end
    object Label25: TLabel
      Left = 8
      Top = 112
      Width = 37
      Height = 13
      Caption = 'CSOSN'
    end
    object Label26: TLabel
      Left = 8
      Top = 136
      Width = 117
      Height = 13
      Caption = 'Valor Base Calc. Simples'
    end
    object Label27: TLabel
      Left = 8
      Top = 160
      Width = 126
      Height = 13
      Caption = 'Valor ICMS Retido Simples'
    end
    object Label28: TLabel
      Left = 8
      Top = 184
      Width = 144
      Height = 13
      Caption = 'Modalidade Base Calculo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 8
      Top = 232
      Width = 114
      Height = 13
      Caption = 'Percent. Redu'#231#227'o Base'
    end
    object Label30: TLabel
      Left = 8
      Top = 264
      Width = 220
      Height = 13
      Caption = 'Modalidade de det. da BC do ICMS ST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 8
      Top = 312
      Width = 138
      Height = 13
      Caption = 'Percentual Margem ICMS ST'
    end
    object Label32: TLabel
      Left = 8
      Top = 336
      Width = 114
      Height = 13
      Caption = 'Percentual BC ICMS ST'
    end
    object Label33: TLabel
      Left = 8
      Top = 360
      Width = 134
      Height = 13
      Caption = 'Valor Redu'#231#227'o BC ICMS ST'
    end
    object Label34: TLabel
      Left = 8
      Top = 384
      Width = 111
      Height = 13
      Caption = 'Valor Aliquota ICMS ST'
    end
    object Label35: TLabel
      Left = 8
      Top = 408
      Width = 70
      Height = 13
      Caption = 'Valor ICMS ST'
    end
    object Label36: TLabel
      Left = 8
      Top = 432
      Width = 114
      Height = 13
      Caption = 'Valor ICMS Desonerado'
    end
    object Label37: TLabel
      Left = 8
      Top = 464
      Width = 152
      Height = 13
      Caption = 'Motivo Desonera'#231#227'o ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 8
      Top = 36
      Width = 42
      Height = 13
      Caption = 'C'#243'd. ISS'
    end
    object Label22: TLabel
      Left = 104
      Top = 36
      Width = 69
      Height = 13
      Caption = 'Nat. Oper. ISS'
    end
    object Label19: TLabel
      Left = 8
      Top = 8
      Width = 59
      Height = 13
      Caption = 'CST ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 112
      Top = 8
      Width = 61
      Height = 13
      Caption = 'C'#243'digo IBGE'
    end
    object Edit22: TEdit
      Left = 112
      Top = 88
      Width = 105
      Height = 21
      Hint = 
        'Char pointer com o item da lista de servi'#231'os. Tamanho m'#225'ximo de ' +
        '5 caracteres. Este par'#226'metro deve ser usado somente em opera'#231#245'es' +
        ' de ISS. Para opera'#231#245'es de ICMS, deve ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '0'
    end
    object Edit23: TEdit
      Left = 112
      Top = 112
      Width = 105
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo do Simples. Tamanho m'#225'ximo de 3 caract' +
        'eres. Este par'#226'metro deve ser usado somente em opera'#231#245'es de ICMS' +
        '. Para opera'#231#245'es de ISS, deve ser nulo. Valores poss'#237'veis: 101, ' +
        '102, 103, 400, 500.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '102'
    end
    object Edit24: TEdit
      Left = 152
      Top = 136
      Width = 65
      Height = 21
      Hint = 
        'Char pointer com a base de c'#225'lculo destinada ao Simples, valor r' +
        'etido. Tamanho m'#225'ximo de 8 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '0'
    end
    object Edit25: TEdit
      Left = 152
      Top = 160
      Width = 65
      Height = 21
      Hint = 
        'Char pointer com o valor de ICMS retido destinada ao Simples. Ta' +
        'manho m'#225'ximo de 8 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Text = '0'
    end
    object ComboBox4: TComboBox
      Left = 136
      Top = 64
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o indicador de incentivo fiscal de ISS. Tamanho' +
        ' de 1 caracter. Este par'#226'metro deve ser usado somente em opera'#231#245 +
        'es de ISS. Para opera'#231#245'es de ICMS, deve ser nulo.'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      Sorted = True
      TabOrder = 4
      Text = 'Escolha...'
      Items.Strings = (
        'Escolha...'
        'N'#227'o'
        'Sim')
    end
    object ComboBox5: TComboBox
      Left = 8
      Top = 200
      Width = 209
      Height = 21
      Hint = 
        'Char pointer com a modalidade de determina'#231#227'o da Base de C'#225'lculo' +
        ' do ICMS. Tamanho de 1 caractere.'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Text = '0 - Margem do valor agregado (%)'
      Items.Strings = (
        '0 - Margem do valor agregado (%)'
        '1 - Pauta (Valor)'
        '2 - Pre'#231'o tabelado m'#225'x. (Valor)'
        '3 - Valor da opera'#231#227'o')
    end
    object Edit16: TEdit
      Left = 128
      Top = 232
      Width = 89
      Height = 21
      Hint = 
        'Char pointer com o percentual da redu'#231#227'o da Base de C'#225'lculo. Tam' +
        'anho m'#225'ximo de 4 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Text = '0'
    end
    object ComboBox6: TComboBox
      Left = 8
      Top = 280
      Width = 209
      Height = 21
      Hint = 
        'Char pointer com a modalidade de determina'#231#227'o da Base de C'#225'lculo' +
        ' do ICMS. Tamanho de 1 caractere.'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Text = '0 - Pre'#231'o tabelado ou m'#225'ximo sugerido'
      Items.Strings = (
        '0 - Pre'#231'o tabelado ou m'#225'ximo sugerido'
        '1 - Lista negativa (valor)'
        '2 - Lista positiva (valor)'
        '3 - Lista neutra (valor)'
        '4 - Margem do valor agregado (%)'
        '5 - Pauta (valor)')
    end
    object Edit21: TEdit
      Left = 152
      Top = 312
      Width = 65
      Height = 21
      Hint = 
        'Char pointer com o Percentual da margem de valor adicionado do I' +
        'CMS ST. Tamanho m'#225'ximo de 4 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Text = '0'
    end
    object Edit26: TEdit
      Left = 152
      Top = 336
      Width = 65
      Height = 21
      Hint = 
        'Char pointer com o Percentual da redu'#231#227'o de BC do ICMS ST. Taman' +
        'ho m'#225'ximo de 4 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      Text = '0'
    end
    object Edit27: TEdit
      Left = 152
      Top = 360
      Width = 65
      Height = 21
      Hint = 
        'Char pointer com o Valor da redu'#231#227'o de BC do ICMS ST. Tamanho m'#225 +
        'ximo de 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Text = '0'
    end
    object Edit28: TEdit
      Left = 152
      Top = 384
      Width = 65
      Height = 21
      Hint = 
        'Char pointer com a Al'#237'quota do imposto do ICMS ST. Tamanho m'#225'xim' +
        'o de 4 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      Text = '0'
    end
    object Edit29: TEdit
      Left = 152
      Top = 408
      Width = 65
      Height = 21
      Hint = 
        'Char pointer com o Valor do ICMS ST. Tamanho m'#225'ximo de 15 caract' +
        'eres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      Text = '0'
    end
    object Edit30: TEdit
      Left = 152
      Top = 432
      Width = 65
      Height = 21
      Hint = 
        'Char pointer com o Valor do ICMS desonerado. Tamanho m'#225'ximo de 1' +
        '5 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      Text = '0'
    end
    object ComboBox7: TComboBox
      Left = 8
      Top = 480
      Width = 233
      Height = 21
      Hint = 
        'Char pointer com o motivo da desonera'#231#227'o do ICMS. Tamanho m'#225'ximo' +
        ' de 2 caracteres.'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
      Text = '0 - Nulo'
      Items.Strings = (
        '0 - Nulo'
        '3 - Uso na agropecu'#225'ria'
        '9 - Outros'
        '12 - '#211'rg'#227'o de fomento e desenv. agropecu'#225'rio')
    end
    object Edit19: TEdit
      Left = 64
      Top = 36
      Width = 33
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo de ISS. Tamanho m'#225'ximo de 20 caractere' +
        's. Este par'#226'metro deve ser usado somente em opera'#231#245'es de ISS. Pa' +
        'ra opera'#231#245'es de ICMS, deve ser nulo.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '0'
    end
    object Edit20: TEdit
      Left = 176
      Top = 36
      Width = 41
      Height = 21
      Hint = 
        'Char pointer com a natureza de opera'#231#227'o de ISS. Tamanho m'#225'ximo d' +
        'e 20 caracteres. Este par'#226'metro deve ser usado somente em opera'#231 +
        #245'es de ISS. Para opera'#231#245'es de ICMS, deve ser nulo. Valores poss'#237 +
        'veis: '#39'00'#39' at'#233' '#39'08'#39'.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object Edit17: TEdit
      Left = 72
      Top = 8
      Width = 33
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo CST de ICMS. Tamanho m'#225'ximo de 2 carac' +
        'teres. Este par'#226'metro deve ser usado somente em opera'#231#245'es de ICM' +
        'S. Para opera'#231#245'es de ISS, deve ser nulo. Valores poss'#237'veis: 00, ' +
        '20, 40, 41, 50, 51, 60, 90.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '00'
    end
    object Edit18: TEdit
      Left = 176
      Top = 8
      Width = 41
      Height = 21
      Hint = 
        'Char pointer com o c'#243'digo IBGE. Tamanho m'#225'ximo de 7 caracteres. ' +
        'Este par'#226'metro deve ser usado somente em opera'#231#245'es de ISS. Para ' +
        'opera'#231#245'es de ICMS, deve ser nulo. Para transa'#231#245'es internacionais' +
        ', este valor deve ser 9999999.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 512
    Top = 8
    Width = 241
    Height = 401
    TabOrder = 3
    object Label40: TLabel
      Left = 8
      Top = 56
      Width = 92
      Height = 13
      Caption = 'Valor Total Tributos'
    end
    object Label41: TLabel
      Left = 8
      Top = 80
      Width = 41
      Height = 13
      Caption = 'CST PIS'
    end
    object Label42: TLabel
      Left = 8
      Top = 104
      Width = 82
      Height = 13
      Caption = 'Base C'#225'lculo PIS'
    end
    object Label43: TLabel
      Left = 8
      Top = 128
      Width = 58
      Height = 13
      Caption = 'Aliquota PIS'
    end
    object Label44: TLabel
      Left = 8
      Top = 152
      Width = 44
      Height = 13
      Caption = 'Valor PIS'
    end
    object Label45: TLabel
      Left = 8
      Top = 176
      Width = 94
      Height = 13
      Caption = 'Quant. Vendida PIS'
    end
    object Label46: TLabel
      Left = 8
      Top = 200
      Width = 85
      Height = 13
      Caption = 'Valor Aliquota PIS'
    end
    object Label47: TLabel
      Left = 8
      Top = 224
      Width = 63
      Height = 13
      Caption = 'CST COFINS'
    end
    object Label48: TLabel
      Left = 8
      Top = 248
      Width = 104
      Height = 13
      Caption = 'Base C'#225'lculo COFINS'
    end
    object Label49: TLabel
      Left = 8
      Top = 272
      Width = 80
      Height = 13
      Caption = 'Aliquota COFINS'
    end
    object Label50: TLabel
      Left = 8
      Top = 296
      Width = 66
      Height = 13
      Caption = 'Valor COFINS'
    end
    object Label51: TLabel
      Left = 8
      Top = 320
      Width = 116
      Height = 13
      Caption = 'Quant. Vendida COFINS'
    end
    object Label52: TLabel
      Left = 8
      Top = 344
      Width = 107
      Height = 13
      Caption = 'Valor Aliquota COFINS'
    end
    object Label39: TLabel
      Left = 8
      Top = 4
      Width = 89
      Height = 13
      Caption = 'Valor Cr'#233'dito ICMS'
    end
    object Label38: TLabel
      Left = 8
      Top = 28
      Width = 112
      Height = 13
      Caption = 'Aliquota Calculo Cr'#233'dito'
    end
    object Label53: TLabel
      Left = 8
      Top = 368
      Width = 33
      Height = 13
      Caption = 'CEST'
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Edit33: TEdit
      Left = 152
      Top = 56
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor total de tributos. Tamanho m'#225'ximo de 8 ' +
        'caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '0,42'
    end
    object Edit34: TEdit
      Left = 152
      Top = 80
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o CST do PIS. Num'#233'rico. Tamanho m'#225'ximo 2 caract' +
        'eres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '04'
    end
    object Edit35: TEdit
      Left = 152
      Top = 104
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor da Base de Calculo PIS. Num'#233'rico. Duas ' +
        'Casas Decimais. Tamanho m'#225'ximo 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = '0'
    end
    object Edit36: TEdit
      Left = 152
      Top = 128
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com a al'#237'quota do PIS. Num'#233'rico. Duas Casas Decimai' +
        's. Tamanho m'#225'ximo 4 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '0'
    end
    object Edit37: TEdit
      Left = 152
      Top = 152
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor do PIS. Num'#233'rico. Duas Casas Decimais. ' +
        'Tamanho m'#225'ximo 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '0'
    end
    object Edit38: TEdit
      Left = 152
      Top = 176
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com a quandidade vendida do PIS. Num'#233'rico. Duas Cas' +
        'as Decimais. Tamanho m'#225'ximo 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '0'
    end
    object Edit39: TEdit
      Left = 152
      Top = 200
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor da aliquota do PIS (em reais). Num'#233'rico' +
        '. Duas Casas Decimais. Tamanho m'#225'ximo 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Text = '0'
    end
    object Edit40: TEdit
      Left = 152
      Top = 224
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o CST do COFINS. Num'#233'rico. Tamanho m'#225'ximo 2 car' +
        'acteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Text = '04'
    end
    object Edit41: TEdit
      Left = 152
      Top = 248
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor da Base de Calculo COFINS. Num'#233'rico. Du' +
        'as Casas Decimais. Tamanho m'#225'ximo 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Text = '0'
    end
    object Edit42: TEdit
      Left = 152
      Top = 272
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com a al'#237'quota do COFINS. Num'#233'rico. Duas Casas Deci' +
        'mais. Tamanho m'#225'ximo 4 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Text = '0'
    end
    object Edit43: TEdit
      Left = 152
      Top = 296
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor do COFINS. Num'#233'rico. Duas Casas Decimai' +
        's. Tamanho m'#225'ximo 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Text = '0'
    end
    object Edit44: TEdit
      Left = 152
      Top = 320
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com a quandidade vendida do COFINS. Num'#233'rico. Duas ' +
        'Casas Decimais. Tamanho m'#225'ximo 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      Text = '0'
    end
    object Edit45: TEdit
      Left = 152
      Top = 344
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor da aliquota do COFINS (em reais). Num'#233'r' +
        'ico. Duas Casas Decimais. Tamanho m'#225'ximo 15 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Text = '0'
    end
    object Edit32: TEdit
      Left = 152
      Top = 4
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com o valor do cr'#233'dito do ICMS que pode ser aprovei' +
        'tado no Simples Nacional. Tamanho m'#225'ximo de 10 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '0'
    end
    object Edit31: TEdit
      Left = 152
      Top = 28
      Width = 81
      Height = 21
      Hint = 
        'Char pointer com a al'#237'quota aplic'#225'vel de c'#225'lculo de cr'#233'dito (Sim' +
        'ples Nacional). Tamanho m'#225'ximo de 4 caracteres.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '0'
    end
    object Edit46: TEdit
      Left = 152
      Top = 368
      Width = 81
      Height = 21
      TabOrder = 15
      Text = '0100100'
    end
  end
  object RealizarVenda: TButton
    Left = 520
    Top = 528
    Width = 145
    Height = 25
    Caption = 'Realizar Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = RealizarVendaClick
  end
  object Sair: TButton
    Left = 672
    Top = 528
    Width = 83
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = SairClick
  end
  object Limpar: TButton
    Left = 264
    Top = 528
    Width = 121
    Height = 25
    Caption = 'Limpar Form.'
    TabOrder = 5
    OnClick = LimparClick
  end
  object GroupBox1: TGroupBox
    Left = 512
    Top = 416
    Width = 241
    Height = 105
    Caption = 'C'#243'digos de Retorno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object MemoRetornos: TMemo
      Left = 8
      Top = 16
      Width = 225
      Height = 81
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 0
    end
  end
  object CancelaItem: TButton
    Left = 392
    Top = 528
    Width = 121
    Height = 25
    Caption = 'CancelaItem'
    TabOrder = 7
    OnClick = CancelaItemClick
  end
end
