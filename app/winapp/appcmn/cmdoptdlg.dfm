object CmdOptDialog: TCmdOptDialog
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #20018#21475'/TCP '#21629#20196
  ClientHeight = 391
  ClientWidth = 318
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
    Left = 148
    Top = 358
    Width = 81
    Height = 29
    Caption = #30830#23450
    ModalResult = 1
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object BtnCancel: TButton
    Left = 232
    Top = 358
    Width = 81
    Height = 29
    Caption = #36864#20986
    ModalResult = 2
    TabOrder = 0
  end
  object ChkOpenCmd: TCheckBox
    Left = 2
    Top = 2
    Width = 151
    Height = 17
    Caption = #21551#21160#21629#20196
    TabOrder = 2
    OnClick = ChkOpenCmdClick
  end
  object ChkCloseCmd: TCheckBox
    Left = 2
    Top = 120
    Width = 157
    Height = 17
    Caption = #20851#26426#21629#20196
    TabOrder = 4
    OnClick = ChkCloseCmdClick
  end
  object CloseCmd: TMemo
    Left = 2
    Top = 136
    Width = 311
    Height = 101
    ScrollBars = ssVertical
    TabOrder = 5
    WordWrap = False
  end
  object OpenCmd: TMemo
    Left = 2
    Top = 18
    Width = 311
    Height = 101
    ScrollBars = ssVertical
    TabOrder = 3
    WordWrap = False
  end
  object BtnLoad: TButton
    Left = 2
    Top = 358
    Width = 65
    Height = 29
    Caption = #36733#20837'...'
    TabOrder = 6
    OnClick = BtnLoadClick
  end
  object BtnSave: TButton
    Left = 70
    Top = 358
    Width = 65
    Height = 29
    Caption = #20445#23384'...'
    TabOrder = 7
    OnClick = BtnSaveClick
  end
  object ChkPeriodicCmd: TCheckBox
    Left = 2
    Top = 238
    Width = 251
    Height = 17
    Caption = #21608#26399#24615#21629#20196' : <command> # cycle (ms)'
    TabOrder = 8
    OnClick = ChkCloseCmdClick
  end
  object PeriodicCmd: TMemo
    Left = 2
    Top = 254
    Width = 311
    Height = 101
    ScrollBars = ssVertical
    TabOrder = 9
    WordWrap = False
  end
  object SaveDialog: TSaveDialog
    Filter = 'Command File (*.cmd)|*.cmd|All File (*.*)|*.*'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Save Serial Commands'
    Left = 232
    Top = 306
  end
  object OpenDialog: TOpenDialog
    Filter = 'Command File (*.cmd)|*.cmd|All File (*.*)|*.*'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Load Serial Commands'
    Left = 202
    Top = 306
  end
end
