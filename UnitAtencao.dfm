object FormAtencao: TFormAtencao
  Left = 320
  Top = 243
  Width = 313
  Height = 174
  Caption = 'Aten'#231#227'o!'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 8
    Width = 297
    Height = 81
    Alignment = taCenter
    BorderStyle = bsNone
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      '***ATEN'#199#195'O***'
      'Para realizar o cadastro de aliquotas no VECF n'#227'o '
      'pode haver movimenta'#231#227'o fiscal no dia!'
      'Para garantir o registro das al'#237'quotas, execute a '
      'redu'#231#227'o Z.')
    ParentFont = False
    TabOrder = 0
  end
  object ButtonExecRedZ: TButton
    Left = 152
    Top = 104
    Width = 137
    Height = 25
    Caption = 'Executar a redu'#231#227'o Z'
    TabOrder = 1
    OnClick = ButtonExecRedZClick
  end
  object ButtonJaExecRedZ: TButton
    Left = 8
    Top = 104
    Width = 137
    Height = 25
    Caption = 'J'#225' Executei a Redu'#231#227'o Z'
    TabOrder = 2
    OnClick = ButtonJaExecRedZClick
  end
end
