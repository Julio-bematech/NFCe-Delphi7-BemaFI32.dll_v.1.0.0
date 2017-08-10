object FormRetornoInfNFCe: TFormRetornoInfNFCe
  Left = 192
  Top = 124
  Width = 378
  Height = 152
  Caption = 'Retorna Informa'#231#245'es NFC-e'
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
    Left = 8
    Top = 16
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Parametro'
  end
  object ComboBoxInfNFCe: TComboBox
    Tag = 2
    Left = 64
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 0
    Text = '4=NNF'
    Items.Strings = (
      '1=COO'
      '2=CCF'
      '3=Chave de Acesso'
      '4=NNF')
  end
  object EditParametro: TEdit
    Left = 64
    Top = 48
    Width = 289
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 248
    Top = 80
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object ButtonLimparInfo: TButton
    Left = 160
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = ButtonLimparInfoClick
  end
end
