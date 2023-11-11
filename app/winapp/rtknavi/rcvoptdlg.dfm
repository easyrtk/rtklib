object RcvOptDialog: TRcvOptDialog
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #25509#25910#26426#36873#39033
  ClientHeight = 61
  ClientWidth = 221
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object BtnOk: TButton
    Left = 48
    Top = 30
    Width = 82
    Height = 29
    Caption = #30830#35748
    ModalResult = 1
    TabOrder = 0
    OnClick = BtnOkClick
  end
  object BnCancel: TButton
    Left = 132
    Top = 30
    Width = 82
    Height = 29
    Caption = #36864#20986
    ModalResult = 2
    TabOrder = 1
  end
  object OptionE: TEdit
    Left = 6
    Top = 6
    Width = 207
    Height = 21
    TabOrder = 2
  end
end
