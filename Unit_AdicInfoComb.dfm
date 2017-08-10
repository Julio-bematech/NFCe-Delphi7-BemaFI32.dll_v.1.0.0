object FormAdicInfoCombustivel: TFormAdicInfoCombustivel
  Left = 263
  Top = 137
  Width = 272
  Height = 223
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'FormAdicInfoComb'
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
    Left = 48
    Top = 16
    Width = 66
    Height = 13
    Caption = 'Indice do item'
  end
  object Label2: TLabel
    Left = 56
    Top = 40
    Width = 58
    Height = 13
    Caption = 'C'#243'digo ANP'
  end
  object Label3: TLabel
    Left = 304
    Top = 16
    Width = 79
    Height = 13
    Caption = '% Mistura de GN'
  end
  object Label4: TLabel
    Left = 312
    Top = 40
    Width = 68
    Height = 13
    Caption = 'C'#243'digo CODIF'
  end
  object Label5: TLabel
    Left = 312
    Top = 64
    Width = 69
    Height = 13
    Caption = 'Quant Produto'
  end
  object Label6: TLabel
    Left = 32
    Top = 64
    Width = 75
    Height = 13
    Caption = 'UF de consumo'
  end
  object Label7: TLabel
    Left = 280
    Top = 88
    Width = 105
    Height = 13
    Caption = 'Base de C'#225'lculo CIDE'
  end
  object Label8: TLabel
    Left = 312
    Top = 112
    Width = 68
    Height = 13
    Caption = 'Al'#237'quota CIDE'
  end
  object Label9: TLabel
    Left = 328
    Top = 136
    Width = 52
    Height = 13
    Caption = 'Valor CIDE'
  end
  object Label10: TLabel
    Left = 304
    Top = 160
    Width = 76
    Height = 13
    Caption = 'N'#250'mero do Bico'
  end
  object Label11: TLabel
    Left = 296
    Top = 184
    Width = 88
    Height = 13
    Caption = 'N'#250'mero da Bomba'
  end
  object Label12: TLabel
    Left = 288
    Top = 208
    Width = 92
    Height = 13
    Caption = 'N'#250'mero do Tanque'
  end
  object Label13: TLabel
    Left = 280
    Top = 232
    Width = 109
    Height = 13
    Caption = 'Valor Inicial Encerrante'
  end
  object Label14: TLabel
    Left = 280
    Top = 256
    Width = 104
    Height = 13
    Caption = 'Valor Final Encerrante'
  end
  object BitBtnAdiciona: TBitBtn
    Left = 168
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtnAdicionaClick
    Kind = bkOK
  end
  object Edit1: TEdit
    Left = 120
    Top = 16
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o indice do produto. Tamanho m'#225'ximo de 3 caract' +
      'eres.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '001'
  end
  object Edit2: TEdit
    Left = 120
    Top = 40
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o c'#243'digo do produto na ANP. Tamanho m'#225'ximo de 9' +
      ' caracteres.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = '110203073'
  end
  object Edit3: TEdit
    Left = 392
    Top = 16
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o percentual de mistura de GN. Tamanho m'#225'ximo d' +
      'e 6 caracteres.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Text = '100001'
  end
  object Edit4: TEdit
    Left = 392
    Top = 40
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o c'#243'digo CODIF. Tamanho m'#225'ximo de 21 caracteres' +
      '.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Text = '123456789012345678901'
  end
  object Edit5: TEdit
    Left = 392
    Top = 64
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com a quantidade de produto vendido '#224' temperatura a' +
      'mbiente. Tamanho m'#225'ximo de 16 caracteres.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Text = '2111100'
  end
  object Edit6: TEdit
    Left = 120
    Top = 64
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com a quantidade de produto vendido '#224' temperatura a' +
      'mbiente. Tamanho m'#225'ximo de 16 caracteres.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Text = 'PR'
  end
  object Edit7: TEdit
    Left = 392
    Top = 88
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com a Base de Calculo do CIDE. Tamanho m'#225'ximo de 16' +
      ' caracteres.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    Text = '1000'
  end
  object Edit8: TEdit
    Left = 392
    Top = 112
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com Al'#237'quota do CIDE. Tamanho m'#225'ximo de 15 caracter' +
      'es.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    Text = '10000'
  end
  object Edit9: TEdit
    Left = 392
    Top = 136
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o valor do CIDE. Tamanho m'#225'ximo de 15 caractere' +
      's.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    Text = '10000'
  end
  object Edit10: TEdit
    Left = 392
    Top = 160
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o n'#250'mero do bico. Tamanho m'#225'ximo de 3 caractere' +
      's.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    Text = '999'
  end
  object Edit11: TEdit
    Left = 392
    Top = 184
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o n'#250'mero da bomba. Tamanho m'#225'ximo de 3 caracter' +
      'es.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    Text = '001'
  end
  object Edit12: TEdit
    Left = 392
    Top = 208
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o n'#250'mero do tanque. Tamanho m'#225'ximo de 3 caracte' +
      'res.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    Text = '001'
  end
  object Edit13: TEdit
    Left = 392
    Top = 232
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o valor inicial do encerrante. Tamanho m'#225'ximo d' +
      'e 15 caracteres.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    Text = '123456789012341'
  end
  object Edit14: TEdit
    Left = 392
    Top = 256
    Width = 121
    Height = 21
    Hint = 
      'Char pointer com o valor final do encerrante. Tamanho m'#225'ximo de ' +
      '15 caracteres.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    Text = '123456789012345'
  end
  object ButtonSair: TButton
    Left = 88
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 15
    OnClick = ButtonSairClick
  end
  object ButtonLimpar: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 16
    OnClick = ButtonLimparClick
  end
  object ButtonMostraInfo: TButton
    Left = 8
    Top = 104
    Width = 233
    Height = 25
    Caption = 'Mostrar Informa'#231#245'es Adicionais Combust'#237'vel'
    TabOrder = 17
    OnClick = ButtonMostraInfoClick
  end
end
