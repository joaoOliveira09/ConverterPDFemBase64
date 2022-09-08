object Form1: TForm1
  Left = 361
  Top = 140
  Width = 911
  Height = 553
  Caption = 'Converter PDF em Base64'
  Color = clBtnFace
  Constraints.MinHeight = 498
  Constraints.MinWidth = 836
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    895
    514)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 88
    Top = -13
    Width = 714
    Height = 510
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    DesignSize = (
      714
      510)
    object Edit1: TEdit
      Left = 63
      Top = 16
      Width = 433
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ReadOnly = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 512
      Top = 13
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Locallizar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 64
      Top = 79
      Width = 433
      Height = 427
      Anchors = [akLeft, akTop, akRight, akBottom]
      Lines.Strings = (
        '')
      TabOrder = 2
    end
    object Button2: TButton
      Left = 172
      Top = 49
      Width = 237
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Converter Pdf para Base64'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 640
    Top = 121
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '='
    Left = 676
    Top = 122
  end
end
