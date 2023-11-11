object OptDialog: TOptDialog
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #35774#32622
  ClientHeight = 297
  ClientWidth = 411
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object Label47: TLabel
    Left = 10
    Top = 183
    Width = 93
    Height = 13
    Caption = 'Station Position File'
  end
  object BtnCancel: TButton
    Left = 310
    Top = 265
    Width = 96
    Height = 29
    Caption = #36864#20986
    ModalResult = 2
    TabOrder = 1
  end
  object BtnOk: TButton
    Left = 212
    Top = 265
    Width = 96
    Height = 29
    Caption = #30830#23450
    ModalResult = 1
    TabOrder = 0
    OnClick = BtnOkClick
  end
  object BtnSave: TButton
    Left = 102
    Top = 265
    Width = 96
    Height = 29
    Caption = #20445#23384'...'
    TabOrder = 3
    OnClick = BtnSaveClick
  end
  object Options: TPageControl
    Left = 0
    Top = 0
    Width = 411
    Height = 263
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 405
    object TabSheet1: TTabSheet
      Caption = #35774#32622'1'
      object Label3: TLabel
        Left = 24
        Top = 73
        Width = 142
        Height = 13
        Caption = #27969#21160#31449#21160#24577#27169#22411' / '#28526#27728#25913#27491
      end
      object Label9: TLabel
        Left = 24
        Top = 117
        Width = 60
        Height = 13
        Caption = #23545#27969#23618#25913#27491
      end
      object Label8: TLabel
        Left = 24
        Top = 95
        Width = 60
        Height = 13
        Caption = #30005#31163#23618#25913#27491
      end
      object LabelPosMode: TLabel
        Left = 24
        Top = 7
        Width = 48
        Height = 13
        Caption = #23450#20301#26041#27861
      end
      object LabelFreq: TLabel
        Left = 24
        Top = 29
        Width = 82
        Height = 13
        Caption = #39057#29575' / '#28388#27874#31867#22411
      end
      object LabelElMask: TLabel
        Left = 24
        Top = 51
        Width = 181
        Height = 13
        Caption = #25130#27490#39640#24230#35282' ('#176') / '#20449#22122#27604#38408#20540' (dbHz)'
      end
      object Label32: TLabel
        Left = 24
        Top = 139
        Width = 76
        Height = 13
        Caption = #21355#26143#26143#21382'/'#38047#24046
      end
      object Label35: TLabel
        Left = 24
        Top = 188
        Width = 154
        Height = 13
        Caption = #21076#38500#21355#26143' (+PRN: '#20351#29992#35813#21355#26143')'
      end
      object BtnFreq: TSpeedButton
        Left = 158
        Top = 24
        Width = 25
        Height = 22
        Caption = #39057#29575
        Flat = True
        Spacing = 0
        OnClick = BtnFreqClick
      end
      object NavSys1: TCheckBox
        Left = 24
        Top = 210
        Width = 49
        Height = 17
        Caption = 'GPS'
        Checked = True
        State = cbChecked
        TabOrder = 17
      end
      object DynamicModel: TComboBox
        Left = 248
        Top = 70
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 5
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          #24320#21551)
      end
      object IonoOpt: TComboBox
        Left = 248
        Top = 92
        Width = 152
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 7
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          #24191#25773#26143#21382
          #26143#22522#22686#24378
          #26080#30005#31163#23618#32452#21512
          #20272#35745#21442#25968' STEC'
          'IONEX TEC'
          'QZSS '#24191#25773#26143#21382)
      end
      object TropOpt: TComboBox
        Left = 248
        Top = 114
        Width = 152
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 8
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          'Saastamoinen'
          #26143#22522#22686#24378
          #20272#35745#21442#25968' ZTD'
          #20272#35745#21442#25968' ZTD+Grad')
      end
      object PosMode: TComboBox
        Left = 248
        Top = 4
        Width = 152
        Height = 21
        Style = csDropDownList
        DropDownCount = 10
        ItemIndex = 0
        TabOrder = 0
        Text = 'Single'
        OnChange = PosModeChange
        Items.Strings = (
          'Single'
          'DGPS/DGNSS'
          'Kinematic'
          'Static'
          'Moving-Base'
          'Fixed'
          'PPP Kinematic'
          'PPP Static'
          'PPP Fixed')
      end
      object Freq: TComboBox
        Left = 248
        Top = 26
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 1
        Text = 'L1+L2'
        OnChange = FreqChange
        Items.Strings = (
          'L1'
          'L1+L2')
      end
      object Solution: TComboBox
        Left = 325
        Top = 26
        Width = 75
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 4
        Text = #21069#21521#28388#27874
        Items.Strings = (
          #21069#21521#28388#27874
          #21518#21521#28388#27874
          #32852#21512#28388#27874)
      end
      object SatEphem: TComboBox
        Left = 248
        Top = 136
        Width = 152
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 9
        Text = #24191#25773#26143#21382
        Items.Strings = (
          #24191#25773#26143#21382
          #31934#23494#26143#21382
          #24191#25773#26143#21382'+'#26143#22522#22686#24378
          #24191#25773#26143#21382'+SSR '#22825#32447#30456#20301#20013#24515
          #24191#25773#26143#21382'+SSR '#21355#26143#36136#24515
          'QZSS LEX')
      end
      object ExSatsE: TEdit
        Left = 221
        Top = 184
        Width = 179
        Height = 21
        TabOrder = 16
      end
      object NavSys2: TCheckBox
        Left = 66
        Top = 210
        Width = 71
        Height = 17
        Caption = 'GLONASS'
        TabOrder = 18
        OnClick = NavSys2Click
      end
      object NavSys3: TCheckBox
        Left = 134
        Top = 210
        Width = 61
        Height = 17
        Caption = 'Galileo'
        TabOrder = 19
      end
      object NavSys4: TCheckBox
        Left = 188
        Top = 210
        Width = 61
        Height = 17
        Caption = 'QZSS'
        TabOrder = 20
      end
      object TideCorr: TComboBox
        Left = 325
        Top = 70
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 6
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          #22266#20307#28526#25913#27491)
      end
      object NavSys6: TCheckBox
        Left = 239
        Top = 210
        Width = 69
        Height = 19
        Caption = 'BDS'
        TabOrder = 21
        OnClick = NavSys6Click
      end
      object ElMask: TComboBox
        Left = 248
        Top = 48
        Width = 75
        Height = 21
        AutoComplete = False
        DropDownCount = 16
        TabOrder = 2
        Text = '15'
        Items.Strings = (
          '0'
          '5'
          '10'
          '15'
          '20'
          '25'
          '30'
          '35'
          '40'
          '45'
          '50'
          '55'
          '60'
          '65'
          '70')
      end
      object PosOpt1: TCheckBox
        Left = 24
        Top = 162
        Width = 61
        Height = 17
        Caption = 'Sat PCV'
        TabOrder = 10
      end
      object PosOpt2: TCheckBox
        Left = 82
        Top = 162
        Width = 62
        Height = 17
        Caption = 'Rec PCV'
        TabOrder = 11
      end
      object PosOpt3: TCheckBox
        Left = 142
        Top = 162
        Width = 69
        Height = 17
        Caption = 'PhWU'
        TabOrder = 12
      end
      object PosOpt4: TCheckBox
        Left = 191
        Top = 162
        Width = 68
        Height = 17
        Caption = 'Rej Ecl'
        TabOrder = 13
      end
      object PosOpt5: TCheckBox
        Left = 244
        Top = 162
        Width = 68
        Height = 17
        Caption = 'RAIM FDE'
        TabOrder = 14
      end
      object BtnSnrMask: TButton
        Left = 324
        Top = 47
        Width = 77
        Height = 23
        Caption = '...'
        TabOrder = 3
        OnClick = BtnSnrMaskClick
      end
      object PosOpt6: TCheckBox
        Left = 313
        Top = 162
        Width = 68
        Height = 17
        Caption = 'DBCorr'
        TabOrder = 15
      end
      object NavSys7: TCheckBox
        Left = 283
        Top = 210
        Width = 69
        Height = 19
        Caption = 'NavIC'
        TabOrder = 22
        OnClick = NavSys6Click
      end
      object NavSys5: TCheckBox
        Left = 338
        Top = 210
        Width = 51
        Height = 17
        Caption = 'SBAS'
        TabOrder = 23
      end
    end
    object TabSheet2: TTabSheet
      Caption = #35774#32622'2'
      ImageIndex = 1
      object Label25: TLabel
        Left = 24
        Top = 7
        Width = 108
        Height = 13
        Caption = #25972#21608#27169#31946#24230#35299#31639#31574#30053
      end
      object Label24: TLabel
        Left = 24
        Top = 33
        Width = 121
        Height = 13
        Caption = #27169#31946#24230#22266#23450'Ratio'#26368#23567#20540
      end
      object Label13: TLabel
        Left = 24
        Top = 77
        Width = 197
        Height = 13
        Caption = #27169#31946#24230#22266#23450#26368#23569#38145#23450#25968'/'#25130#27490#39640#24230#35282'('#176')'
      end
      object LabelHold: TLabel
        Left = 24
        Top = 99
        Width = 197
        Height = 13
        Caption = #20445#30041#27169#31946#24230#26368#23569#22266#23450#25968'/'#25130#27490#39640#24230#35282'('#176')'
      end
      object Label22: TLabel
        Left = 24
        Top = 123
        Width = 149
        Height = 13
        Caption = #25968#25454#20013#26029#35745#25968' / '#21608#36339#38408#20540' (m)'
      end
      object Label14: TLabel
        Left = 24
        Top = 147
        Width = 146
        Height = 13
        Caption = #26368#22823#24046#20998#40836#26399' (s) / '#26102#38388#21516#27493
      end
      object Label11: TLabel
        Left = 24
        Top = 169
        Width = 127
        Height = 13
        Caption = 'GDOP/Innov '#25298#32477#38408#20540'(m)'
      end
      object Label37: TLabel
        Left = 24
        Top = 191
        Width = 178
        Height = 13
        Caption = #27169#31946#24230#22266#23450' / '#28388#27874#22120#36845#20195#26368#22823#27425#25968
      end
      object Label12: TLabel
        Left = 24
        Top = 55
        Width = 208
        Height = 13
        Caption = #27169#31946#24230#22266#23450#26368#23567#32622#20449#27700#24179'/'#26368#22823#23567#25968#20559#24046
      end
      object AmbRes: TComboBox
        Left = 248
        Top = 4
        Width = 61
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 0
        Text = #36830#32493#20272#35745
        OnChange = AmbResChange
        Items.Strings = (
          #20851#38381
          #36830#32493#20272#35745
          #36880#21382#20803#20272#35745
          'Fix and Hold')
      end
      object ValidThresAR: TEdit
        Left = 248
        Top = 30
        Width = 152
        Height = 21
        TabOrder = 2
        Text = '3.0'
      end
      object LockCntFixAmb: TEdit
        Left = 248
        Top = 74
        Width = 75
        Height = 21
        TabOrder = 3
        Text = '0'
      end
      object OutCntResetAmb: TEdit
        Left = 248
        Top = 122
        Width = 75
        Height = 21
        TabOrder = 5
        Text = '5'
      end
      object ElMaskAR: TEdit
        Left = 325
        Top = 74
        Width = 75
        Height = 21
        TabOrder = 4
        Text = '0'
      end
      object SlipThres: TEdit
        Left = 325
        Top = 122
        Width = 75
        Height = 21
        TabOrder = 6
        Text = '0.05'
      end
      object MaxAgeDiff: TEdit
        Left = 248
        Top = 144
        Width = 75
        Height = 21
        TabOrder = 7
        Text = '30'
      end
      object RejectThres: TEdit
        Left = 325
        Top = 166
        Width = 75
        Height = 21
        TabOrder = 10
        Text = '30'
      end
      object NumIter: TEdit
        Left = 325
        Top = 188
        Width = 75
        Height = 21
        TabOrder = 12
        Text = '1'
      end
      object GloAmbRes: TComboBox
        Left = 311
        Top = 4
        Width = 43
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = #20851#38381
        OnChange = AmbResChange
        Items.Strings = (
          #20851#38381
          #24320#21551
          #33258#21160#26631#23450)
      end
      object BaselineConst: TCheckBox
        Left = 24
        Top = 212
        Width = 181
        Height = 17
        Caption = #22522#32447#38271#24230#32422#26463' (m)'
        TabOrder = 13
        OnClick = BaselineConstClick
      end
      object BaselineLen: TEdit
        Left = 248
        Top = 210
        Width = 75
        Height = 21
        TabOrder = 14
        Text = '0.000'
      end
      object BaselineSig: TEdit
        Left = 325
        Top = 210
        Width = 75
        Height = 21
        TabOrder = 15
        Text = '0.000'
      end
      object FixCntHoldAmb: TEdit
        Left = 248
        Top = 96
        Width = 75
        Height = 21
        TabOrder = 16
        Text = '10'
      end
      object ElMaskHold: TEdit
        Left = 325
        Top = 96
        Width = 75
        Height = 21
        TabOrder = 17
        Text = '10'
      end
      object RejectGdop: TEdit
        Left = 248
        Top = 166
        Width = 75
        Height = 21
        TabOrder = 9
        Text = '30'
      end
      object ThresAR2: TEdit
        Left = 248
        Top = 52
        Width = 75
        Height = 21
        TabOrder = 18
        Text = '0.9999'
      end
      object ThresAR3: TEdit
        Left = 325
        Top = 52
        Width = 75
        Height = 21
        TabOrder = 19
        Text = '0.20'
      end
      object SyncSol: TComboBox
        Left = 325
        Top = 144
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 8
        Text = #20851#38381
        OnChange = AmbResChange
        Items.Strings = (
          #20851#38381
          #24320#21551)
      end
      object BdsAmbRes: TComboBox
        Left = 356
        Top = 4
        Width = 43
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 20
        Text = #20851#38381
        OnChange = AmbResChange
        Items.Strings = (
          #20851#38381
          #24320#21551)
      end
      object ARIter: TEdit
        Left = 248
        Top = 188
        Width = 75
        Height = 21
        TabOrder = 11
        Text = '1'
      end
    end
    object TabSheet3: TTabSheet
      Caption = #36755#20986
      ImageIndex = 2
      object LabelSolFormat: TLabel
        Left = 24
        Top = 7
        Width = 48
        Height = 13
        Caption = #35299#30340#26684#24335
      end
      object LabelTimeFormat: TLabel
        Left = 24
        Top = 51
        Width = 106
        Height = 13
        Caption = #26102#38388#26684#24335' / '#20445#30041#23567#25968
      end
      object LabelLatLonFormat: TLabel
        Left = 24
        Top = 73
        Width = 146
        Height = 13
        Caption = #32428#24230','#32463#24230#26684#24335' / '#23383#27573#20998#38548#31526
      end
      object LabelFieldSep: TLabel
        Left = 24
        Top = 97
        Width = 209
        Height = 13
        Caption = #26080#35299#26102#36755#20986#21333#28857#23450#20301#35299' / '#26368#22823#26631#20934#24046' (m)'
      end
      object Label2: TLabel
        Left = 24
        Top = 119
        Width = 58
        Height = 13
        Caption = #22522#20934' / '#39640#31243
      end
      object Label18: TLabel
        Left = 24
        Top = 141
        Width = 84
        Height = 13
        Caption = #22823#22320#27700#20934#38754#27169#22411
      end
      object Label20: TLabel
        Left = 23
        Top = 29
        Width = 152
        Height = 13
        Caption = #36755#20986#22836#25991#20214' / '#22788#29702#36873#39033' / '#36895#24230
      end
      object Label36: TLabel
        Left = 24
        Top = 211
        Width = 142
        Height = 13
        Caption = #36755#20986#35299#29366#24577' / '#36755#20986#35843#35797#20449#24687
      end
      object Label17: TLabel
        Left = 24
        Top = 187
        Width = 216
        Height = 13
        Caption = 'NMEA'#26684#24335#36755#20986#38388#38548' (s) RMC/GGA, GSA/GSV'
      end
      object Label21: TLabel
        Left = 24
        Top = 163
        Width = 72
        Height = 13
        Caption = #38745#24577#27169#24335#36755#20986
        Enabled = False
      end
      object SolFormat: TComboBox
        Left = 248
        Top = 4
        Width = 152
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 0
        Text = 'Lat/Lon/Height'
        OnChange = SolFormatChange
        Items.Strings = (
          'Lat/Lon/Height'
          'X/Y/Z-ECEF'
          'E/N/U-Baseline'
          'NMEA0183')
      end
      object TimeFormat: TComboBox
        Left = 248
        Top = 50
        Width = 118
        Height = 21
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 4
        Text = 'hh:mm:ss UTC'
        Items.Strings = (
          'ww ssss GPST'
          'hh:mm:ss GPST'
          'hh:mm:ss UTC')
      end
      object LatLonFormat: TComboBox
        Left = 248
        Top = 72
        Width = 118
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 6
        Text = 'ddd.ddddddd'
        Items.Strings = (
          'ddd.ddddddd'
          'ddd mm ss.sss')
      end
      object FieldSep: TEdit
        Left = 368
        Top = 72
        Width = 32
        Height = 21
        TabOrder = 7
      end
      object OutputDatum: TComboBox
        Left = 248
        Top = 116
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 10
        Text = 'WGS84'
        Items.Strings = (
          'WGS84')
      end
      object OutputHeight: TComboBox
        Left = 325
        Top = 116
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 11
        Text = 'Ellipsoidal'
        OnClick = OutputHeightClick
        Items.Strings = (
          'Ellipsoidal'
          'Geodetic')
      end
      object OutputGeoid: TComboBox
        Left = 248
        Top = 138
        Width = 152
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 12
        Text = 'Internal'
        Items.Strings = (
          'Internal'
          'EGM96-BE (15")'
          'EGM2008-SE (2.5")'
          'EGM2008-SE (1")'
          'GSI2000 (1x1.5")')
      end
      object OutputHead: TComboBox
        Left = 248
        Top = 28
        Width = 49
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          #24320#21551)
      end
      object OutputOpt: TComboBox
        Left = 299
        Top = 28
        Width = 49
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 2
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          #24320#21551)
      end
      object TimeDecimal: TEdit
        Left = 368
        Top = 50
        Width = 32
        Height = 21
        TabOrder = 5
        Text = '3'
      end
      object DebugStatus: TComboBox
        Left = 248
        Top = 208
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 13
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          #29366#24577#21442#25968
          #27531#24046)
      end
      object NmeaIntv1: TEdit
        Left = 248
        Top = 184
        Width = 75
        Height = 21
        TabOrder = 15
        Text = '0'
      end
      object NmeaIntv2: TEdit
        Left = 325
        Top = 184
        Width = 75
        Height = 21
        TabOrder = 16
        Text = '1'
      end
      object DebugTrace: TComboBox
        Left = 325
        Top = 208
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 14
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          '1'#32423
          '2'#32423
          '3'#32423
          '4'#32423
          '5'#32423)
      end
      object SolStatic: TComboBox
        Left = 248
        Top = 160
        Width = 152
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemIndex = 0
        TabOrder = 17
        Text = #25152#26377#21382#20803#35299
        Items.Strings = (
          #25152#26377#21382#20803#35299
          #21333#20010#35299)
      end
      object OutputSingle: TComboBox
        Left = 248
        Top = 94
        Width = 75
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 8
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          #24320#21551)
      end
      object MaxSolStd: TEdit
        Left = 325
        Top = 94
        Width = 75
        Height = 21
        TabOrder = 9
        Text = '0'
      end
      object OutputVel: TComboBox
        Left = 350
        Top = 28
        Width = 50
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 3
        Text = #20851#38381
        Items.Strings = (
          #20851#38381
          #24320#21551)
      end
    end
    object TabSheet4: TTabSheet
      Caption = #32479#35745#20449#24687
      ImageIndex = 3
      object Label29: TLabel
        Left = 34
        Top = 213
        Width = 97
        Height = 13
        Caption = #21355#26143#38047#31283#23450#24615' (s/s)'
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 0
        Width = 397
        Height = 105
        Caption = #35266#27979#35823#24046' (1-sigma)'
        TabOrder = 0
        object Label6: TLabel
          Left = 35
          Top = 16
          Width = 156
          Height = 13
          Caption = #20266#36317'/'#36733#27874#30456#20301#35823#24046' '#27604#20363' L1/L2'
        end
        object Label7: TLabel
          Left = 35
          Top = 38
          Width = 151
          Height = 13
          Caption = #36733#27874#30456#20301#20013#35823#24046' a+b/sinEl (m)'
        end
        object Label16: TLabel
          Left = 34
          Top = 60
          Width = 160
          Height = 13
          Caption = #36733#27874#30456#20301#20013#35823#24046'/'#22522#32447' (m/10km)'
        end
        object Label10: TLabel
          Left = 34
          Top = 82
          Width = 83
          Height = 13
          Caption = #22810#26222#21202#39057#29575' (Hz)'
        end
        object MeasErrR1: TEdit
          Left = 246
          Top = 13
          Width = 73
          Height = 21
          TabOrder = 0
          Text = '100.0'
        end
        object MeasErr2: TEdit
          Left = 246
          Top = 35
          Width = 73
          Height = 21
          TabOrder = 2
          Text = '0.003'
        end
        object MeasErr3: TEdit
          Left = 321
          Top = 35
          Width = 73
          Height = 21
          TabOrder = 3
          Text = '0.003'
        end
        object MeasErr4: TEdit
          Left = 246
          Top = 57
          Width = 148
          Height = 21
          TabOrder = 4
          Text = '0.000'
        end
        object MeasErr5: TEdit
          Left = 246
          Top = 79
          Width = 148
          Height = 21
          TabOrder = 5
          Text = '1.000'
        end
        object MeasErrR2: TEdit
          Left = 321
          Top = 13
          Width = 73
          Height = 21
          TabOrder = 1
          Text = '100.0'
        end
      end
      object GroupBox4: TGroupBox
        Left = 2
        Top = 103
        Width = 396
        Height = 105
        Caption = #36807#31243#22122#22768' (1-sigma/sqrt(s))'
        TabOrder = 1
        object Label26: TLabel
          Left = 32
          Top = 38
          Width = 71
          Height = 13
          Caption = #36733#27874#30456#20301' ('#21608')'
        end
        object Label27: TLabel
          Left = 32
          Top = 60
          Width = 132
          Height = 13
          Caption = #22825#39030#30005#31163#23618#24310#36831' (m/10km)'
        end
        object Label28: TLabel
          Left = 32
          Top = 84
          Width = 103
          Height = 13
          Caption = #22825#39030#23545#27969#23618#24310#36831' (m)'
        end
        object Label33: TLabel
          Left = 32
          Top = 16
          Width = 185
          Height = 13
          Caption = #25509#25910#26426#21152#36895#24230' '#27700#24179'/'#22402#30452#20998#37327' (m/s2)'
        end
        object PrNoise1: TEdit
          Left = 246
          Top = 36
          Width = 148
          Height = 21
          TabOrder = 2
          Text = '1.0E-04'
        end
        object PrNoise2: TEdit
          Left = 246
          Top = 58
          Width = 148
          Height = 21
          TabOrder = 3
          Text = '1.0E-03'
        end
        object PrNoise3: TEdit
          Left = 246
          Top = 80
          Width = 148
          Height = 21
          TabOrder = 4
          Text = '1.0E-04'
        end
        object PrNoise4: TEdit
          Left = 246
          Top = 14
          Width = 73
          Height = 21
          TabOrder = 0
          Text = '1.0E-04'
        end
        object PrNoise5: TEdit
          Left = 321
          Top = 14
          Width = 73
          Height = 21
          TabOrder = 1
          Text = '1.0E-04'
        end
      end
      object SatClkStab: TEdit
        Left = 248
        Top = 209
        Width = 148
        Height = 21
        TabOrder = 2
        Text = '5.0E-12'
      end
    end
    object TabSheet5: TTabSheet
      Caption = #20301#32622
      ImageIndex = 4
      object Label4: TLabel
        Left = 12
        Top = 12
        Width = 3
        Height = 13
      end
      object Label30: TLabel
        Left = 6
        Top = 195
        Width = 72
        Height = 13
        Caption = #27979#31449#20301#32622#25991#20214
      end
      object BtnStaPosView: TSpeedButton
        Left = 351
        Top = 209
        Width = 21
        Height = 21
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080FFFFFFFFFFFFFFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFF808080808080808080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080808080808080FFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnStaPosViewClick
      end
      object GroupRefAnt: TGroupBox
        Left = 3
        Top = 96
        Width = 397
        Height = 99
        Caption = #22522#20934#31449
        TabOrder = 1
        object LabelRefAntD: TLabel
          Left = 241
          Top = 58
          Width = 76
          Height = 13
          Caption = 'Delta-E/N/U (m)'
        end
        object LabelMaxAveEp: TLabel
          Left = 153
          Top = 18
          Width = 76
          Height = 13
          Caption = 'Max # Ave (ep)'
          Visible = False
        end
        object RefAntE: TEdit
          Left = 239
          Top = 74
          Width = 51
          Height = 21
          TabOrder = 7
          Text = '0'
        end
        object RefAntN: TEdit
          Left = 291
          Top = 74
          Width = 51
          Height = 21
          TabOrder = 8
          Text = '0'
        end
        object RefAntU: TEdit
          Left = 343
          Top = 74
          Width = 51
          Height = 21
          TabOrder = 9
          Text = '0'
        end
        object RefPos1: TEdit
          Left = 6
          Top = 36
          Width = 126
          Height = 21
          TabOrder = 1
          Text = '0'
        end
        object RefPos2: TEdit
          Left = 133
          Top = 36
          Width = 129
          Height = 21
          TabOrder = 2
          Text = '0'
        end
        object RefPos3: TEdit
          Left = 263
          Top = 36
          Width = 129
          Height = 21
          TabOrder = 3
          Text = '0'
        end
        object BtnRefPos: TButton
          Left = 368
          Top = 13
          Width = 25
          Height = 23
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BtnRefPosClick
        end
        object RefAntPcv: TCheckBox
          Left = 6
          Top = 58
          Width = 165
          Height = 17
          Caption = #22825#32447#31867#22411' (*: Auto)'
          TabOrder = 5
          OnClick = RovAntPcvClick
        end
        object RefAnt: TComboBox
          Left = 6
          Top = 74
          Width = 231
          Height = 21
          DropDownCount = 16
          TabOrder = 6
          OnClick = RefAntClick
        end
        object RefPosTypeP: TComboBox
          Left = 6
          Top = 14
          Width = 142
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'Lat/Lon/Height (deg/m)'
          OnChange = RefPosTypePChange
          Items.Strings = (
            'Lat/Lon/Height (deg/m)'
            'Lat/Lon/Height (dms/m)'
            'X/Y/Z-ECEF (m)'
            'RTCM/Raw Antenna Position'
            'Average of Single Position')
        end
        object MaxAveEp: TEdit
          Left = 232
          Top = 14
          Width = 43
          Height = 21
          TabOrder = 10
          Text = '3600'
          Visible = False
        end
        object ChkInitRestart: TCheckBox
          Left = 280
          Top = 16
          Width = 89
          Height = 17
          Caption = 'Init by Restart'
          TabOrder = 11
        end
      end
      object StaPosFile: TEdit
        Left = 3
        Top = 209
        Width = 347
        Height = 21
        TabOrder = 2
      end
      object BtnStaPosFile: TButton
        Left = 374
        Top = 208
        Width = 25
        Height = 23
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BtnStaPosFileClick
      end
      object GroupRovAnt: TGroupBox
        Left = 3
        Top = -2
        Width = 397
        Height = 99
        Caption = #27969#21160#31449
        TabOrder = 0
        object LabelRovAntD: TLabel
          Left = 241
          Top = 58
          Width = 76
          Height = 13
          Caption = 'Delta-E/N/U (m)'
        end
        object RovAntE: TEdit
          Left = 239
          Top = 74
          Width = 51
          Height = 21
          TabOrder = 7
          Text = '0'
        end
        object RovAntN: TEdit
          Left = 291
          Top = 74
          Width = 51
          Height = 21
          TabOrder = 8
          Text = '0'
        end
        object RovAntU: TEdit
          Left = 343
          Top = 74
          Width = 51
          Height = 21
          TabOrder = 9
          Text = '0'
        end
        object RovPos1: TEdit
          Left = 6
          Top = 36
          Width = 126
          Height = 21
          TabOrder = 1
          Text = '0'
        end
        object RovPos2: TEdit
          Left = 133
          Top = 36
          Width = 129
          Height = 21
          TabOrder = 2
          Text = '0'
        end
        object RovPos3: TEdit
          Left = 263
          Top = 36
          Width = 129
          Height = 21
          TabOrder = 3
          Text = '0'
        end
        object BtnRovPos: TButton
          Left = 368
          Top = 13
          Width = 25
          Height = 23
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BtnRovPosClick
        end
        object RovAntPcv: TCheckBox
          Left = 6
          Top = 58
          Width = 153
          Height = 17
          Caption = #22825#32447#31867#22411' (*: Auto)'
          TabOrder = 5
          OnClick = RovAntPcvClick
        end
        object RovAnt: TComboBox
          Left = 6
          Top = 74
          Width = 231
          Height = 21
          DropDownCount = 16
          TabOrder = 6
          OnClick = RovAntClick
        end
        object RovPosTypeP: TComboBox
          Left = 6
          Top = 14
          Width = 142
          Height = 21
          Style = csDropDownList
          Enabled = False
          ItemIndex = 0
          TabOrder = 0
          Text = 'Lat/Lon/Height (deg/m)'
          OnChange = RovPosTypePChange
          Items.Strings = (
            'Lat/Lon/Height (deg/m)'
            'Lat/Lon/Height (dms/m)'
            'X/Y/Z-ECEF (m)')
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #25991#20214
      ImageIndex = 6
      object Label1: TLabel
        Left = 6
        Top = 93
        Width = 84
        Height = 13
        Caption = #24046#20998#30721#20559#24046#25991#20214
      end
      object BtnAntPcvView: TSpeedButton
        Left = 381
        Top = -2
        Width = 21
        Height = 17
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080FFFFFFFFFFFFFFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFF808080808080808080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080808080808080FFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnAntPcvViewClick
      end
      object Label38: TLabel
        Left = 6
        Top = 2
        Width = 137
        Height = 13
        Caption = #21355#26143'/'#25509#25910#26426#22825#32447' PCV '#25991#20214
      end
      object BtnSatPcvView: TSpeedButton
        Left = 355
        Top = -2
        Width = 21
        Height = 17
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080FFFFFFFFFFFFFFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFF808080808080808080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080808080808080FFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnSatPcvViewClick
      end
      object Label48: TLabel
        Left = 6
        Top = 58
        Width = 84
        Height = 13
        Caption = #22823#22320#27700#20934#38754#25991#20214
      end
      object Label31: TLabel
        Left = 6
        Top = 197
        Width = 98
        Height = 13
        Caption = 'FTP/HTTP '#26412#22320#36335#24452
      end
      object BtnDCBView: TSpeedButton
        Left = 381
        Top = 91
        Width = 21
        Height = 17
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080FFFFFFFFFFFFFFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFF808080808080808080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080808080808080FFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnStaPosViewClick
      end
      object Label34: TLabel
        Left = 6
        Top = 163
        Width = 96
        Height = 13
        Caption = #28023#27915#28526#27728#25913#27491#25991#20214
      end
      object BtnOLFileView: TSpeedButton
        Left = 381
        Top = 160
        Width = 21
        Height = 17
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080FFFFFFFFFFFFFFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFF808080808080808080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080808080808080FFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
      end
      object Label23: TLabel
        Left = 6
        Top = 128
        Width = 44
        Height = 13
        Caption = 'EOP'#25991#20214
      end
      object BtnEOPView: TSpeedButton
        Left = 381
        Top = 125
        Width = 21
        Height = 17
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080FFFFFFFFFFFFFFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFF808080808080808080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFF808080808080808080808080808080808080808080FFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnEOPViewClick
      end
      object AntPcvFile: TEdit
        Left = 2
        Top = 37
        Width = 378
        Height = 21
        TabOrder = 2
      end
      object BtnAntPcvFile: TButton
        Left = 381
        Top = 36
        Width = 21
        Height = 23
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BtnAntPcvFileClick
      end
      object BtnDCBFile: TButton
        Left = 381
        Top = 106
        Width = 21
        Height = 23
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BtnDCBFileClick
      end
      object DCBFile: TEdit
        Left = 2
        Top = 107
        Width = 378
        Height = 21
        TabOrder = 6
      end
      object SatPcvFile: TEdit
        Left = 2
        Top = 16
        Width = 378
        Height = 21
        TabOrder = 0
      end
      object BtnSatPcvFile: TButton
        Left = 381
        Top = 15
        Width = 21
        Height = 23
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnSatPcvFileClick
      end
      object GeoidDataFile: TEdit
        Left = 2
        Top = 72
        Width = 378
        Height = 21
        TabOrder = 4
      end
      object BtnGeoidDataFile: TButton
        Left = 381
        Top = 71
        Width = 21
        Height = 23
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BtnGeoidDataFileClick
      end
      object LocalDir: TEdit
        Left = 2
        Top = 211
        Width = 378
        Height = 21
        TabOrder = 12
      end
      object BtnLocalDir: TButton
        Left = 381
        Top = 210
        Width = 21
        Height = 23
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = BtnLocalDirClick
      end
      object OLFile: TEdit
        Left = 2
        Top = 177
        Width = 378
        Height = 21
        TabOrder = 10
      end
      object BtnOLFile: TButton
        Left = 381
        Top = 176
        Width = 21
        Height = 23
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object EOPFile: TEdit
        Left = 2
        Top = 142
        Width = 378
        Height = 21
        TabOrder = 8
      end
      object BtnEOPFile: TButton
        Left = 381
        Top = 140
        Width = 21
        Height = 23
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = BtnEOPFileClick
      end
    end
    object TabSheet8: TTabSheet
      Caption = #20854#23427
      ImageIndex = 6
      DesignSize = (
        403
        235)
      object Label19: TLabel
        Left = 32
        Top = 7
        Width = 180
        Height = 13
        Caption = #22788#29702#21608#26399' (ms) / '#32531#20914#21306#22823#23567' (bytes)'
      end
      object Label40: TLabel
        Left = 32
        Top = 190
        Width = 48
        Height = 13
        Caption = #35299#30340#23383#20307
      end
      object FontLabel2: TLabel
        Left = 199
        Top = 188
        Width = 80
        Height = 18
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        Caption = 'Font Label 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 265
      end
      object Label41: TLabel
        Left = 32
        Top = 74
        Width = 160
        Height = 13
        Caption = #35299#30340#32531#20914#21306'/ '#26085#24535#22823#23567' (epochs)'
      end
      object Label42: TLabel
        Left = 32
        Top = 96
        Width = 72
        Height = 13
        Caption = #23548#33322#28040#24687#36873#25321
      end
      object Label5: TLabel
        Left = 32
        Top = 118
        Width = 180
        Height = 13
        Caption = 'SBAS '#21355#26143#36873#25321' (0: all) / '#30417#35270#22120#31471#21475
      end
      object Label46: TLabel
        Left = 32
        Top = 51
        Width = 195
        Height = 13
        Caption = 'NMEA'#20256#36755#21608#26399'(ms) / '#25991#20214#20132#25442#31354#38388' (s)'
      end
      object Label44: TLabel
        Left = 32
        Top = 29
        Width = 130
        Height = 13
        Caption = #36229#26102' / '#37325#36830#26102#38388#38388#38548' (ms)'
      end
      object Label45: TLabel
        Left = 32
        Top = 142
        Width = 92
        Height = 13
        Caption = 'HTTP / NTRIP '#20195#29702
      end
      object Label43: TLabel
        Left = 32
        Top = 214
        Width = 72
        Height = 13
        Caption = #25511#20214#25490#21015#26041#24335
      end
      object Label49: TLabel
        Left = 32
        Top = 167
        Width = 48
        Height = 13
        Caption = #25511#20214#23383#20307
      end
      object FontLabel1: TLabel
        Left = 199
        Top = 164
        Width = 80
        Height = 18
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        Caption = 'Font Label 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 265
      end
      object SvrCycleE: TEdit
        Left = 248
        Top = 5
        Width = 66
        Height = 21
        TabOrder = 0
        Text = '10'
      end
      object SvrBuffSizeE: TEdit
        Left = 316
        Top = 5
        Width = 66
        Height = 21
        TabOrder = 5
        Text = '32768'
      end
      object BtnFont2: TButton
        Left = 358
        Top = 185
        Width = 25
        Height = 24
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = BtnFont2Click
      end
      object SolBuffSizeE: TEdit
        Left = 248
        Top = 72
        Width = 66
        Height = 21
        TabOrder = 6
        Text = '1000'
      end
      object NavSelectS: TComboBox
        Left = 248
        Top = 94
        Width = 134
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 8
        Text = #25152#26377
        Items.Strings = (
          #25152#26377
          '(1) '#27969#21160#31449
          '(2) '#22522#20934#31449
          '(3) '#25913#27491#20449#24687)
      end
      object SbasSatE: TEdit
        Left = 248
        Top = 116
        Width = 66
        Height = 21
        TabOrder = 9
        Text = '0'
      end
      object SavedSolE: TEdit
        Left = 316
        Top = 72
        Width = 66
        Height = 21
        TabOrder = 7
        Text = '100'
      end
      object NmeaCycleE: TEdit
        Left = 248
        Top = 49
        Width = 66
        Height = 21
        TabOrder = 3
        Text = '5000'
      end
      object TimeoutTimeE: TEdit
        Left = 248
        Top = 27
        Width = 66
        Height = 21
        TabOrder = 1
        Text = '10000'
      end
      object ReconTimeE: TEdit
        Left = 316
        Top = 27
        Width = 66
        Height = 21
        TabOrder = 2
        Text = '10000'
      end
      object MoniPortE: TEdit
        Left = 316
        Top = 116
        Width = 66
        Height = 21
        TabOrder = 10
        Text = '0'
      end
      object FileSwapMarginE: TEdit
        Left = 316
        Top = 49
        Width = 66
        Height = 21
        TabOrder = 4
        Text = '30'
      end
      object ProxyAddrE: TEdit
        Left = 148
        Top = 139
        Width = 234
        Height = 21
        TabOrder = 11
      end
      object PanelStackE: TComboBox
        Left = 248
        Top = 211
        Width = 134
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 12
        Text = 'Horizontal'
        Items.Strings = (
          'Horizontal'
          'Vertical')
      end
      object BtnFont1: TButton
        Left = 358
        Top = 160
        Width = 25
        Height = 24
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = BtnFont1Click
      end
    end
  end
  object BtnLoad: TButton
    Left = 4
    Top = 265
    Width = 96
    Height = 29
    Caption = #36733#20837'...'
    TabOrder = 2
    OnClick = BtnLoadClick
  end
  object OpenDialog: TOpenDialog
    Filter = 
      'All (*.*)|*.*|PCV File (*.pcv,*.atx)|*.pcv;*.atx|Position File (' +
      '*.pos,*.snx)|*.pos;*.snx|Options File (*.conf)|*.conf'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Load File'
    Left = 188
    Top = 116
  end
  object SaveDialog: TSaveDialog
    Filter = 'All (*.*)|*.*|Options File (*.conf)|*.conf'
    Title = 'Save File'
    Left = 160
    Top = 117
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 131
    Top = 115
  end
end
