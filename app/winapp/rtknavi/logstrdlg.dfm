object LogStrDialog: TLogStrDialog
  Left = 0
  Top = 3
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #26085#24535#27969
  ClientHeight = 198
  ClientWidth = 394
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object Label5: TLabel
    Left = 169
    Top = 3
    Width = 24
    Height = 13
    Caption = #31867#22411
  end
  object Label6: TLabel
    Left = 240
    Top = 3
    Width = 24
    Height = 13
    Caption = #36873#39033
  end
  object Label10: TLabel
    Left = 50
    Top = 3
    Width = 36
    Height = 13
    Caption = #26085#24535#27969
  end
  object LabelF1: TLabel
    Left = 12
    Top = 84
    Width = 72
    Height = 13
    Caption = #26085#24535#25991#20214#36335#24452
  end
  object BtnKey: TSpeedButton
    Left = 188
    Top = 168
    Width = 21
    Height = 23
    Caption = '?'
    Flat = True
    OnClick = BtnKeyClick
  end
  object Label1: TLabel
    Left = 76
    Top = 173
    Width = 49
    Height = 13
    Caption = 'Swap Intv'
  end
  object Label2: TLabel
    Left = 175
    Top = 173
    Width = 7
    Height = 13
    Caption = 'H'
  end
  object BtnCancel: TButton
    Left = 303
    Top = 167
    Width = 85
    Height = 27
    Caption = #36864#20986
    ModalResult = 2
    TabOrder = 0
  end
  object BtnOk: TButton
    Left = 215
    Top = 167
    Width = 85
    Height = 27
    Caption = #30830#23450
    ModalResult = 1
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object Stream1: TComboBox
    Left = 133
    Top = 17
    Width = 103
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = 'Serial'
    OnChange = Stream1Change
    Items.Strings = (
      'Serial'
      'TCP Client'
      'TCP Server'
      'NTRIP Server'
      'NTRIP Caster'
      'File')
  end
  object Stream2: TComboBox
    Left = 133
    Top = 40
    Width = 103
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 6
    Text = 'Serial'
    OnChange = Stream2Change
    Items.Strings = (
      'Serial'
      'TCP Client'
      'TCP Server'
      'NTRIP Server'
      'NTRIP Caster'
      'File')
  end
  object BtnStr1: TButton
    Left = 237
    Top = 16
    Width = 25
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BtnStr1Click
  end
  object BtnStr2: TButton
    Left = 237
    Top = 39
    Width = 25
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BtnStr2Click
  end
  object FilePath1: TEdit
    Left = 8
    Top = 98
    Width = 355
    Height = 21
    TabOrder = 8
  end
  object FilePath2: TEdit
    Left = 8
    Top = 120
    Width = 355
    Height = 21
    TabOrder = 10
  end
  object BtnFile1: TButton
    Left = 363
    Top = 97
    Width = 25
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BtnFile1Click
  end
  object BtnFile2: TButton
    Left = 363
    Top = 119
    Width = 25
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BtnFile2Click
  end
  object TimeTagC: TCheckBox
    Left = 10
    Top = 170
    Width = 63
    Height = 17
    Caption = #26102#38388#25139
    TabOrder = 12
  end
  object Stream1C: TCheckBox
    Left = 8
    Top = 19
    Width = 117
    Height = 17
    Caption = '(6) '#27969#21160#31449
    TabOrder = 2
    OnClick = Stream1CClick
  end
  object Stream2C: TCheckBox
    Left = 8
    Top = 42
    Width = 117
    Height = 17
    Caption = '(7) '#22522#20934#31449
    TabOrder = 5
    OnClick = Stream2CClick
  end
  object Stream3C: TCheckBox
    Left = 8
    Top = 65
    Width = 117
    Height = 17
    Caption = '(8) '#25913#27491#20449#24687
    TabOrder = 13
    OnClick = Stream3CClick
  end
  object Stream3: TComboBox
    Left = 133
    Top = 63
    Width = 103
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 14
    Text = 'Serial'
    OnChange = Stream3Change
    Items.Strings = (
      'Serial'
      'TCP Client'
      'TCP Server'
      'NTRIP Server'
      'NTRIP Caster'
      'File')
  end
  object BtnStr3: TButton
    Left = 237
    Top = 62
    Width = 25
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = BtnStr3Click
  end
  object FilePath3: TEdit
    Left = 8
    Top = 142
    Width = 355
    Height = 21
    TabOrder = 16
  end
  object BtnFile3: TButton
    Left = 363
    Top = 141
    Width = 25
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = BtnFile3Click
  end
  object SwapIntv: TComboBox
    Left = 128
    Top = 170
    Width = 45
    Height = 21
    TabOrder = 18
    Items.Strings = (
      ''
      '0.25'
      '0.5'
      '1'
      '3'
      '6'
      '12'
      '24')
  end
  object OutEventC: TCheckBox
    Left = 276
    Top = 19
    Width = 105
    Height = 17
    Caption = #36755#20986#20107#20214
    TabOrder = 19
  end
  object SaveDialog: TSaveDialog
    Filter = 
      'All File (*.*)|*.*|Log File (*.log)|*.log|RTCM2 File (*.rtcm2)|*' +
      '.rtcm2|RTCM3 File (*.rtcm3)|*.rtcm3'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Output File Path'
    Left = 307
    Top = 64
  end
end
