object FtpOptDialog: TFtpOptDialog
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FTP '#36873#39033
  ClientHeight = 142
  ClientWidth = 365
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object LabelUser: TLabel
    Left = 198
    Top = 50
    Width = 36
    Height = 13
    Caption = #29992#25143#21517
  end
  object LabelPasswd: TLabel
    Left = 198
    Top = 74
    Width = 24
    Height = 13
    Caption = #23494#30721
  end
  object Label1: TLabel
    Left = 8
    Top = 50
    Width = 48
    Height = 13
    Caption = #19979#36733#38388#38548
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 138
    Height = 13
    Caption = #19979#36733#22320#22336'(address/file-path)'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 81
    Height = 13
    Caption = 'Download Offset'
  end
  object Label4: TLabel
    Left = 8
    Top = 118
    Width = 48
    Height = 13
    Caption = #21047#26032#38388#38548
  end
  object Label5: TLabel
    Left = 180
    Top = 118
    Width = 5
    Height = 13
    Caption = 's'
  end
  object Label6: TLabel
    Left = 180
    Top = 48
    Width = 7
    Height = 13
    Caption = 'H'
  end
  object Label7: TLabel
    Left = 180
    Top = 72
    Width = 7
    Height = 13
    Caption = 'H'
  end
  object BtnKey: TSpeedButton
    Left = 208
    Top = 2
    Width = 19
    Height = 21
    Caption = '?'
    Flat = True
    OnClick = BtnKeyClick
  end
  object Label8: TLabel
    Left = 8
    Top = 94
    Width = 92
    Height = 13
    Caption = 'Time Offset in Path'
  end
  object Label9: TLabel
    Left = 180
    Top = 94
    Width = 7
    Height = 13
    Caption = 'H'
  end
  object BtnCancel: TButton
    Left = 279
    Top = 110
    Width = 81
    Height = 29
    Caption = #36864#20986
    ModalResult = 2
    TabOrder = 0
  end
  object BtnOk: TButton
    Left = 195
    Top = 110
    Width = 81
    Height = 29
    Caption = #30830#23450
    ModalResult = 1
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object User: TEdit
    Left = 254
    Top = 46
    Width = 105
    Height = 21
    TabOrder = 7
    Text = 'anonymous'
  end
  object Passwd: TEdit
    Left = 254
    Top = 70
    Width = 105
    Height = 21
    PasswordChar = '*'
    TabOrder = 8
  end
  object Addr: TComboBox
    Left = 6
    Top = 22
    Width = 353
    Height = 21
    AutoComplete = False
    TabOrder = 2
  end
  object Interval: TComboBox
    Left = 106
    Top = 46
    Width = 71
    Height = 21
    DropDownCount = 16
    TabOrder = 3
    Text = '0'
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '6'
      '12'
      '24')
  end
  object Offset: TComboBox
    Left = 106
    Top = 68
    Width = 71
    Height = 21
    DropDownCount = 16
    TabOrder = 4
    Text = '0'
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '6'
      '9'
      '12'
      '15'
      '18'
      '21'
      ''
      '')
  end
  object RetryInterval: TEdit
    Left = 106
    Top = 114
    Width = 71
    Height = 21
    TabOrder = 6
    Text = '300'
  end
  object PathOffset: TComboBox
    Left = 106
    Top = 90
    Width = 71
    Height = 21
    DropDownCount = 16
    TabOrder = 5
    Text = '0'
    Items.Strings = (
      '0'
      '-1'
      '-2'
      '-3'
      '-6'
      '-9'
      '-12'
      '-15'
      '-18'
      '-21'
      '')
  end
end
