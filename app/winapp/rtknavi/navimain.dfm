object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biMinimize]
  Caption = #22320#22522#22686#24378#23436#22909#24615#20113#31471#19968#20307#27979#35797#31995#32479
  ClientHeight = 534
  ClientWidth = 888
  Color = clWindow
  Constraints.MaxHeight = 1600
  Constraints.MaxWidth = 2400
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 51
    Width = 886
    Height = 422
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 880
    ExplicitHeight = 413
    object Splitter1: TSplitter
      Left = 387
      Top = 0
      Width = 4
      Height = 422
      Beveled = True
      Color = clWhite
      ParentColor = False
      ResizeStyle = rsUpdate
      ExplicitLeft = 195
      ExplicitHeight = 185
    end
    object Splitter2: TSplitter
      Left = 391
      Top = 0
      Width = 4
      Height = 422
      Beveled = True
      Color = clWhite
      ParentColor = False
      ResizeStyle = rsUpdate
      ExplicitLeft = 384
      ExplicitHeight = 185
    end
    object Splitter3: TSplitter
      Left = 383
      Top = 0
      Width = 4
      Height = 422
      Beveled = True
      Color = clWhite
      ParentColor = False
      ResizeStyle = rsUpdate
      ExplicitLeft = 191
      ExplicitHeight = 185
    end
    object Splitter4: TSplitter
      Left = 194
      Top = 0
      Width = 4
      Height = 422
      Beveled = True
      Color = clWhite
      ParentColor = False
      ResizeStyle = rsUpdate
      ExplicitLeft = 187
      ExplicitHeight = 185
    end
    object Panel21: TPanel
      Left = 0
      Top = 0
      Width = 194
      Height = 422
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      OnResize = Panel21Resize
      ExplicitHeight = 413
      object Panel213: TPanel
        Left = 0
        Top = 406
        Width = 194
        Height = 16
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 397
        object ScbSol: TScrollBar
          Left = 1
          Top = 1
          Width = 167
          Height = 14
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          Ctl3D = True
          DoubleBuffered = False
          Max = 0
          PageSize = 0
          ParentCtl3D = False
          ParentDoubleBuffered = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnChange = ScbSolChange
        end
        object BtnSave: TButton
          Left = 168
          Top = 1
          Width = 25
          Height = 14
          Align = alRight
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BtnSaveClick
        end
      end
      object Panel212: TPanel
        Left = 0
        Top = 0
        Width = 194
        Height = 18
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Plabel0: TLabel
          Left = 28
          Top = 1
          Width = 135
          Height = 15
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = #32428#24230'/'#32463#24230'/'#39640#31243
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object BtnSolType: TSpeedButton
          Left = 156
          Top = 0
          Width = 25
          Height = 17
          Hint = 'Switch Solution Type'
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            DE000000424DDE00000000000000360000002800000007000000070000000100
            180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
            000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000}
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
          OnClick = BtnSolTypeClick
        end
      end
      object Panel211: TPanel
        Left = 0
        Top = 18
        Width = 194
        Height = 388
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        Constraints.MaxHeight = 1000
        Constraints.MaxWidth = 1200
        Constraints.MinHeight = 145
        Constraints.MinWidth = 187
        ParentBackground = False
        TabOrder = 0
        OnResize = Panel211Resize
        ExplicitHeight = 379
        object PanelSol: TPanel
          Left = 5
          Top = 6
          Width = 240
          Height = 140
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 0
          object LabelNEU: TLabel
            Left = 15
            Top = 112
            Width = 210
            Height = 18
            AutoSize = False
            Caption = #20559'    '#24046': E: 0.000 N: 0.000 U: 0.000 m'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Plabel1: TLabel
            Left = 15
            Top = 40
            Width = 35
            Height = 18
            Caption = #32428#24230':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Plabel2: TLabel
            Left = 15
            Top = 64
            Width = 35
            Height = 18
            Caption = #32463#24230':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Plabel3: TLabel
            Left = 15
            Top = 88
            Width = 50
            Height = 18
            Caption = #22823#22320#39640':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object PlabelA: TLabel
            Left = 15
            Top = 16
            Width = 50
            Height = 18
            Caption = #35299#31867#22411':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Pos1: TLabel
            Left = 70
            Top = 40
            Width = 96
            Height = 18
            Caption = '0 00'#39' 00.0000"'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Pos2: TLabel
            Left = 70
            Top = 64
            Width = 96
            Height = 18
            Caption = '0 00'#39' 00.0000"'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Pos3: TLabel
            Left = 70
            Top = 88
            Width = 55
            Height = 18
            Caption = '0.000 m'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Solution: TLabel
            Left = 70
            Top = 16
            Width = 24
            Height = 18
            Alignment = taCenter
            Caption = '----'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object IndSol: TPanel
            Left = 110
            Top = 16
            Width = 15
            Height = 15
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
          end
        end
        object PanelRest: TPanel
          Left = 5
          Top = 257
          Width = 240
          Height = 120
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 1
          object LabelAge: TLabel
            Left = 15
            Top = 18
            Width = 120
            Height = 18
            AutoSize = False
            Caption = #40836#26399' age: 0.0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelRatio: TLabel
            Left = 15
            Top = 42
            Width = 120
            Height = 17
            AutoSize = False
            Caption = #27604#29575' ratio: 0.0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelNSat: TLabel
            Left = 15
            Top = 66
            Width = 120
            Height = 17
            AutoSize = False
            Caption = #21355#26143#25968' nsat: 0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelVar: TLabel
            Left = 15
            Top = 90
            Width = 120
            Height = 17
            AutoSize = False
            Caption = #39564#21518#26041#24046': 0.0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
        end
        object PanelPL: TPanel
          Left = 5
          Top = 136
          Width = 240
          Height = 180
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 2
          object HAState: TLabel
            Left = 120
            Top = 69
            Width = 49
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = '0 '#27491#24120
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelHA: TLabel
            Left = 15
            Top = 69
            Width = 134
            Height = 17
            AutoSize = False
            Caption = #27700#24179#29366#24577#21578#35686' HA: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelHPL: TLabel
            Left = 15
            Top = 15
            Width = 180
            Height = 17
            AutoSize = False
            Caption = #27700#24179#20445#25252#27700#24179' HPL: 0.0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelVA: TLabel
            Left = 15
            Top = 96
            Width = 134
            Height = 17
            AutoSize = False
            Caption = #22402#30452#29366#24577#21578#35686' VA:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelVPL: TLabel
            Left = 15
            Top = 42
            Width = 180
            Height = 17
            AutoSize = False
            Caption = #22402#30452#20445#25252#27700#24179' VPL: 0.0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object VAState: TLabel
            Left = 120
            Top = 96
            Width = 49
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = '0 '#27491#24120
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelVAE: TLabel
            Left = 15
            Top = 150
            Width = 180
            Height = 17
            AutoSize = False
            Caption = #22402#30452#21578#35686#21382#20803#32479#35745': 0.0%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object LabelHAE: TLabel
            Left = 15
            Top = 123
            Width = 180
            Height = 17
            AutoSize = False
            Caption = #27700#24179#21578#35686#21382#20803#32479#35745': 0.0%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
        end
      end
    end
    object Panel22: TPanel
      Left = 198
      Top = 0
      Width = 185
      Height = 422
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      Constraints.MaxHeight = 1000
      Constraints.MaxWidth = 1200
      Constraints.MinHeight = 179
      Constraints.MinWidth = 185
      TabOrder = 1
      OnResize = Panel22Resize
      ExplicitHeight = 413
      object Disp1: TImage
        Left = 0
        Top = 0
        Width = 1200
        Height = 1000
      end
      object Plot1: TImage
        Left = 1
        Top = 0
        Width = 1200
        Height = 1000
        Visible = False
      end
      object BtnFreqType1: TSpeedButton
        Left = 142
        Top = 0
        Width = 25
        Height = 17
        Hint = 'Switch Subtype'
        Flat = True
        Glyph.Data = {
          DE000000424DDE00000000000000360000002800000007000000070000000100
          180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
          000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnFreqType1Click
      end
      object BtnPlotType1: TSpeedButton
        Left = 160
        Top = 0
        Width = 25
        Height = 17
        Hint = 'Switch Plot Type'
        AllowAllUp = True
        Flat = True
        Glyph.Data = {
          DE000000424DDE00000000000000360000002800000007000000070000000100
          180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
          000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        OnClick = BtnPlotType1Click
      end
      object BtnExpand1: TSpeedButton
        Left = 1
        Top = 19
        Width = 27
        Height = 27
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFF787878
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
          FFFFFFFF000000FFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
          B4B4B4000000FFFFFF00FFFFFF000000B4B4B400000000000000000000000000
          0000000000000000B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
          FFFFFFFF000000FFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFF000000FFFFFFFFFFFFB4B4B4
          000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
          B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnExpand1Click
      end
      object BtnShrink1: TSpeedButton
        Left = 1
        Top = 47
        Width = 27
        Height = 27
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFF787878
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFF00000000000000000000
          0000000000FFFFFFB4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4
          000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
          B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnShrink1Click
      end
    end
    object Panel23: TPanel
      Left = 395
      Top = 0
      Width = 491
      Height = 422
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Constraints.MaxHeight = 1000
      Constraints.MaxWidth = 1200
      Constraints.MinHeight = 179
      Constraints.MinWidth = 185
      TabOrder = 2
      OnResize = Panel23Resize
      ExplicitWidth = 485
      ExplicitHeight = 413
      object Disp2: TImage
        Left = 0
        Top = 0
        Width = 1200
        Height = 1000
      end
      object Plot2: TImage
        Left = 0
        Top = 0
        Width = 1200
        Height = 1000
        Visible = False
      end
      object BtnFreqType2: TSpeedButton
        Left = 142
        Top = 0
        Width = 25
        Height = 17
        Hint = 'Switch Subtype'
        Flat = True
        Glyph.Data = {
          DE000000424DDE00000000000000360000002800000007000000070000000100
          180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
          000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnFreqType2Click
      end
      object BtnPlotType2: TSpeedButton
        Left = 160
        Top = 0
        Width = 25
        Height = 17
        Hint = 'Switch Plot Type'
        AllowAllUp = True
        Flat = True
        Glyph.Data = {
          DE000000424DDE00000000000000360000002800000007000000070000000100
          180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
          000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        OnClick = BtnPlotType2Click
      end
      object BtnExpand2: TSpeedButton
        Left = 1
        Top = 19
        Width = 27
        Height = 27
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFF787878
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
          FFFFFFFF000000FFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
          B4B4B4000000FFFFFF00FFFFFF000000B4B4B400000000000000000000000000
          0000000000000000B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
          FFFFFFFF000000FFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFF000000FFFFFFFFFFFFB4B4B4
          000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
          B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnExpand2Click
      end
      object BtnShrink2: TSpeedButton
        Left = 1
        Top = 47
        Width = 27
        Height = 27
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFF787878
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFF00000000000000000000
          0000000000FFFFFFB4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4
          000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
          B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnShrink2Click
      end
    end
    object Panel24: TPanel
      Left = 395
      Top = 0
      Width = 491
      Height = 422
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Constraints.MaxHeight = 1000
      Constraints.MaxWidth = 1200
      Constraints.MinHeight = 179
      Constraints.MinWidth = 185
      TabOrder = 3
      OnResize = Panel24Resize
      ExplicitWidth = 485
      ExplicitHeight = 413
      object Disp3: TImage
        Left = 0
        Top = 0
        Width = 1200
        Height = 1000
      end
      object Plot3: TImage
        Left = 0
        Top = 0
        Width = 1200
        Height = 1000
        Visible = False
      end
      object BtnFreqType3: TSpeedButton
        Left = 142
        Top = 0
        Width = 25
        Height = 17
        Hint = 'Switch Subtype'
        Flat = True
        Glyph.Data = {
          DE000000424DDE00000000000000360000002800000007000000070000000100
          180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
          000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnFreqType3Click
      end
      object BtnPlotType3: TSpeedButton
        Left = 160
        Top = 0
        Width = 25
        Height = 17
        Hint = 'Switch Plot Type'
        AllowAllUp = True
        Flat = True
        Glyph.Data = {
          DE000000424DDE00000000000000360000002800000007000000070000000100
          180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
          000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        OnClick = BtnPlotType3Click
      end
      object BtnExpand3: TSpeedButton
        Left = 1
        Top = 19
        Width = 27
        Height = 27
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFF787878
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
          FFFFFFFF000000FFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
          B4B4B4000000FFFFFF00FFFFFF000000B4B4B400000000000000000000000000
          0000000000000000B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
          FFFFFFFF000000FFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFF000000FFFFFFFFFFFFB4B4B4
          000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
          B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnExpand2Click
      end
      object BtnShrink3: TSpeedButton
        Left = 1
        Top = 47
        Width = 27
        Height = 27
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFF787878
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFF00000000000000000000
          0000000000FFFFFFB4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4
          000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
          B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnShrink2Click
      end
    end
    object Panel25: TPanel
      Left = 395
      Top = 0
      Width = 491
      Height = 422
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Constraints.MaxHeight = 1000
      Constraints.MaxWidth = 1200
      Constraints.MinHeight = 179
      Constraints.MinWidth = 185
      TabOrder = 4
      OnResize = Panel25Resize
      ExplicitWidth = 485
      ExplicitHeight = 413
      object Disp4: TImage
        Left = 0
        Top = 0
        Width = 1200
        Height = 1000
      end
      object Plot4: TImage
        Left = 0
        Top = 0
        Width = 1200
        Height = 1000
        Visible = False
      end
      object BtnFreqType4: TSpeedButton
        Left = 142
        Top = 0
        Width = 25
        Height = 17
        Hint = 'Switch Subtype'
        Flat = True
        Glyph.Data = {
          DE000000424DDE00000000000000360000002800000007000000070000000100
          180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
          000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnFreqType4Click
      end
      object BtnPlotType4: TSpeedButton
        Left = 160
        Top = 0
        Width = 25
        Height = 17
        Hint = 'Switch Plot Type'
        AllowAllUp = True
        Flat = True
        Glyph.Data = {
          DE000000424DDE00000000000000360000002800000007000000070000000100
          180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
          000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        OnClick = BtnPlotType4Click
      end
      object BtnExpand4: TSpeedButton
        Left = 1
        Top = 19
        Width = 27
        Height = 27
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFF787878
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
          FFFFFFFF000000FFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
          B4B4B4000000FFFFFF00FFFFFF000000B4B4B400000000000000000000000000
          0000000000000000B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
          FFFFFFFF000000FFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFF000000FFFFFFFFFFFFB4B4B4
          000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
          B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnExpand2Click
      end
      object BtnShrink4: TSpeedButton
        Left = 1
        Top = 47
        Width = 27
        Height = 27
        Flat = True
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          1800000000000802000000000000000000000000000000000000FFFFFF787878
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFF00000000000000000000
          0000000000FFFFFFB4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
          FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4
          000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
          B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
          B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00}
        OnClick = BtnShrink2Click
      end
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 475
    Width = 886
    Height = 25
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = 466
    ExplicitWidth = 880
    object BtnMonitor: TSpeedButton
      Left = 2
      Top = 2
      Width = 23
      Height = 21
      Hint = 'RTK Monitor'
      Align = alLeft
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF8080808080
        80808080808080808080808080808080FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF808080FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF808080FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF808080808080808080808080808080808080808080
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnMonitorClick
      ExplicitHeight = 24
    end
    object Message: TLabel
      Left = 25
      Top = 2
      Width = 813
      Height = 21
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Layout = tlCenter
      ExplicitLeft = 0
      ExplicitTop = 6
      ExplicitWidth = 497
      ExplicitHeight = 19
    end
    object BtnAbout: TSpeedButton
      Left = 861
      Top = 2
      Width = 23
      Height = 21
      Hint = 'About'
      Align = alRight
      Caption = '?'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnAboutClick
      ExplicitLeft = 22
      ExplicitTop = 0
      ExplicitHeight = 24
    end
    object BtnTaskTray: TSpeedButton
      Left = 838
      Top = 2
      Width = 23
      Height = 21
      Hint = 'Hide'
      Align = alRight
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF787878FFFFFF787878FFFFFF787878FF
        FFFF000000000000000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFF00FFFFFFFFFFFF
        787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF787878FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF787878FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF787878FFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF787878FFFFFF787878FFFFFF787878FF
        FFFF787878FFFFFF787878FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnTaskTrayClick
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 24
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 502
    Width = 888
    Height = 31
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 1
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    OnResize = Panel4Resize
    ExplicitTop = 493
    ExplicitWidth = 882
    object BtnStart: TBitBtn
      Left = 2
      Top = 0
      Width = 75
      Height = 29
      Caption = #36816#34892
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF008000008000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF0080000080000080
        00008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        008000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFF008000008000008000008000008000008000008000008000
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00800000800000800000800000800000
        8000008000008000008000FFFFFFFFFFFF00FFFFFFFFFFFF0080000080000080
        00008000008000008000008000008000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        008000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFF008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF008000008000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      TabOrder = 0
      OnClick = BtnStartClick
    end
    object BtnMark: TBitBtn
      Left = 76
      Top = 0
      Width = 75
      Height = 29
      Caption = #26631#35760'...'
      Glyph.Data = {
        06050000424D060500000000000036040000280000000D0000000D0000000100
        080000000000D000000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFA4
        00A4FFFFFFFFFF000000FFFFFFA400FFFFFF00A4FFFFFF000000FFFFFF00FFFF
        FFFFFF00FFFFFF000000FFFFA4FFFFA400A4FFFFA4FFFF000000FFFF00FFFF00
        0000FFFF00FFFF000000FFFFA4FFFFA400A4FFFFA4FFFF000000FFFFFF00FFFF
        FFFFFF00FFFFFF000000FFFFFFA400FFFFFF00A4FFFFFF000000FFFFFFFFFFA4
        00A4FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFF000000}
      TabOrder = 1
      OnClick = BtnMarkClick
    end
    object BtnPlot: TBitBtn
      Left = 151
      Top = 0
      Width = 75
      Height = 29
      Caption = #32472#22270
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000FFFFFF808080FF
        FFFF000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000FFFFFFFFFF
        FFFFFFFF808080FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00FFFFFFFFFFFF
        000000FFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFF000000FFFFFFFFFF
        FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFF00FFFFFF00000080808080808080808080808080808080
        8080808080808080808080000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
        FF000000808080FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFF
        000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFF
        FF00FFFFFFFFFFFF000000FFFFFFFFFFFF000000808080FFFFFFFFFFFFFFFFFF
        000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000FFFFFF808080FF
        FFFF000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      TabOrder = 2
      OnClick = BtnPlotClick
    end
    object BtnOpt: TBitBtn
      Left = 226
      Top = 0
      Width = 75
      Height = 29
      Caption = #35774#32622'...'
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F0000007F7F7FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFC3C3C3000000C3C3C37F7F7F0000007F
        7F7FC3C3C3000000C3C3C3FFFFFFFFFFFF00FFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFF00FFFFFFFFFFFF
        C3C3C30000000000007F7F7F7F7F7F7F7F7F000000000000C3C3C3FFFFFFFFFF
        FF00FFFFFF7F7F7F7F7F7F0000007F7F7FC3C3C3FFFFFFC3C3C37F7F7F000000
        7F7F7F7F7F7FFFFFFF00FFFFFF0000000000000000007F7F7FFFFFFFFFFFFFFF
        FFFF7F7F7F000000000000000000FFFFFF00FFFFFF7F7F7F7F7F7F0000007F7F
        7FC3C3C3FFFFFFC3C3C37F7F7F0000007F7F7F7F7F7FFFFFFF00FFFFFFFFFFFF
        C3C3C30000000000007F7F7F7F7F7F7F7F7F000000000000C3C3C3FFFFFFFFFF
        FF00FFFFFFFFFFFF000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFF00FFFFFFFFFFFFC3C3C3000000C3C3C37F7F7F0000007F
        7F7FC3C3C3000000C3C3C3FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF7F7F7F0000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      TabOrder = 3
      OnClick = BtnOptClick
    end
    object BtnExit: TBitBtn
      Left = 300
      Top = 0
      Width = 75
      Height = 29
      Caption = #36864#20986
      TabOrder = 4
      OnClick = BtnExitClick
    end
    object BtnStop: TBitBtn
      Left = 374
      Top = 0
      Width = 75
      Height = 29
      Caption = #26242#20572
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      TabOrder = 5
      Visible = False
      OnClick = BtnStopClick
    end
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 30
    Width = 886
    Height = 19
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    Visible = False
    OnResize = Panel5Resize
    ExplicitWidth = 880
    object SolS: TLabel
      Left = 40
      Top = 1
      Width = 44
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '----'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SolQ: TLabel
      Left = 87
      Top = 0
      Width = 44
      Height = 14
      Caption = 'Solution'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnSolType2: TSpeedButton
      Left = 530
      Top = 0
      Width = 25
      Height = 16
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        DE000000424DDE00000000000000360000002800000007000000070000000100
        180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000FFFFFF000000
        000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000}
      Spacing = 0
      OnClick = BtnSolTypeClick
    end
    object IndQ: TPanel
      Left = 33
      Top = 3
      Width = 10
      Height = 10
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
  end
  object Pane6: TPanel
    Left = 1
    Top = 29
    Width = 25
    Height = 18
    AutoSize = True
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    OnResize = Panel21Resize
    object BtnPanel: TSpeedButton
      Left = 0
      Top = 0
      Width = 25
      Height = 18
      Hint = 'Switch Layout'
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = BtnPanelClick
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 1
    Width = 886
    Height = 27
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 880
    object LabelTime: TLabel
      Left = 5
      Top = 6
      Width = 144
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = '2000/01/01 00:00:00.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel11: TPanel
      Left = 150
      Top = 2
      Width = 35
      Height = 22
      TabOrder = 1
      object BtnTimeSys: TSpeedButton
        Left = 1
        Top = 0
        Width = 32
        Height = 21
        Hint = #36873#25321#26102#38388#31995#32479
        Caption = 'GPST'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 1
        OnClick = BtnTimeSysClick
      end
    end
    object Panel12: TPanel
      Left = 697
      Top = 2
      Width = 187
      Height = 23
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 691
      object Image1: TImage
        Left = 56
        Top = 3
        Width = 29
        Height = 17
        Picture.Data = {
          07544269746D617056060000424D560600000000000036040000280000001D00
          0000110000000100080000000000200200000000000000000000000100000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
          E00000400000004020000040400000406000004080000040A0000040C0000040
          E00000600000006020000060400000606000006080000060A0000060C0000060
          E00000800000008020000080400000806000008080000080A0000080C0000080
          E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
          E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
          E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
          E00040000000400020004000400040006000400080004000A0004000C0004000
          E00040200000402020004020400040206000402080004020A0004020C0004020
          E00040400000404020004040400040406000404080004040A0004040C0004040
          E00040600000406020004060400040606000406080004060A0004060C0004060
          E00040800000408020004080400040806000408080004080A0004080C0004080
          E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
          E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
          E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
          E00080000000800020008000400080006000800080008000A0008000C0008000
          E00080200000802020008020400080206000802080008020A0008020C0008020
          E00080400000804020008040400080406000804080008040A0008040C0008040
          E00080600000806020008060400080606000806080008060A0008060C0008060
          E00080800000808020008080400080806000808080008080A0008080C0008080
          E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
          E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
          E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
          E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
          E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
          E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
          E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
          E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
          E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
          E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
          A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A4FFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A4FFFF00
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A4FFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A4FFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object Image2: TImage
        Left = 38
        Top = 3
        Width = 29
        Height = 17
        Picture.Data = {
          07544269746D617056060000424D560600000000000036040000280000001D00
          0000110000000100080000000000200200000000000000000000000100000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
          E00000400000004020000040400000406000004080000040A0000040C0000040
          E00000600000006020000060400000606000006080000060A0000060C0000060
          E00000800000008020000080400000806000008080000080A0000080C0000080
          E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
          E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
          E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
          E00040000000400020004000400040006000400080004000A0004000C0004000
          E00040200000402020004020400040206000402080004020A0004020C0004020
          E00040400000404020004040400040406000404080004040A0004040C0004040
          E00040600000406020004060400040606000406080004060A0004060C0004060
          E00040800000408020004080400040806000408080004080A0004080C0004080
          E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
          E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
          E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
          E00080000000800020008000400080006000800080008000A0008000C0008000
          E00080200000802020008020400080206000802080008020A0008020C0008020
          E00080400000804020008040400080406000804080008040A0008040C0008040
          E00080600000806020008060400080606000806080008060A0008060C0008060
          E00080800000808020008080400080806000808080008080A0008080C0008080
          E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
          E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
          E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
          E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
          E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
          E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
          E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
          E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
          E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
          E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
          A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A4FFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A4FFFF00
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A4FFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A4FFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object Str1: TPanel
        Left = 31
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 0
      end
      object Str2: TPanel
        Left = 40
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 1
      end
      object Str3: TPanel
        Left = 49
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 2
      end
      object Str4: TPanel
        Left = 85
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 3
      end
      object Str5: TPanel
        Left = 94
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 4
      end
      object Str6: TPanel
        Left = 105
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 5
      end
      object Str7: TPanel
        Left = 114
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 6
      end
      object Str8: TPanel
        Left = 123
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 7
      end
      object Svr: TPanel
        Left = 67
        Top = 5
        Width = 9
        Height = 14
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 8
      end
      object Panel121: TPanel
        Left = 0
        Top = 0
        Width = 27
        Height = 22
        TabOrder = 9
        object BtnInputStr: TSpeedButton
          Left = 1
          Top = 0
          Width = 25
          Height = 21
          Hint = 'Input Streams'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'I'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnInputStrClick
        end
      end
      object Panel122: TPanel
        Left = 134
        Top = 0
        Width = 27
        Height = 22
        TabOrder = 10
        object BtnOutputStr: TSpeedButton
          Left = 1
          Top = 0
          Width = 25
          Height = 21
          Hint = 'Output Streams'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'O'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 1
          OnClick = BtnOutputStrClick
        end
      end
      object Panel123: TPanel
        Left = 161
        Top = 0
        Width = 27
        Height = 22
        TabOrder = 11
        object BtnLogStr: TSpeedButton
          Left = 1
          Top = 0
          Width = 25
          Height = 21
          Hint = 'Log Streams'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'L'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 1
          OnClick = BtnLogStrClick
        end
      end
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerTimer
    Left = 293
    Top = 156
  end
  object SaveDialog: TSaveDialog
    Filter = 
      'All File (*.*)|*.*|Log File (*.log)|*.log|Text File (*.txt)|*.tx' +
      't'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Save Solution Log'
    Left = 320
    Top = 156
  end
  object TrayIcon: TTrayIcon
    PopupMenu = PopupMenu
    OnDblClick = TrayIconDblClick
    Left = 264
    Top = 156
  end
  object PopupMenu: TPopupMenu
    Left = 302
    Top = 91
    object MenuExpand: TMenuItem
      Caption = 'Main &Window...'
      ShortCut = 16471
      OnClick = MenuExpandClick
    end
    object MenuMonitor: TMenuItem
      Caption = 'RTK &Monitor...'
      ShortCut = 16461
      OnClick = MenuMonitorClick
    end
    object MenuPlot: TMenuItem
      Caption = 'RTK &Plot...'
      ShortCut = 16464
      OnClick = MenuPlotClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuStart: TMenuItem
      Caption = '&Start'
      ShortCut = 16467
      OnClick = MenuStartClick
    end
    object MenuStop: TMenuItem
      Caption = 'S&top'
      Enabled = False
      OnClick = MenuStopClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MenuExit: TMenuItem
      Caption = '&Exit'
      OnClick = MenuExitClick
    end
  end
  object ImageList: TImageList
    Left = 274
    Top = 91
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099362F008040200099362F009936
      2F00000000000000000000000000000000000000000000000000000000000000
      000099362F008040200099362F008040200099362F008040200099362F009936
      2F00000000000000000000000000000000000000000000000000000000000000
      000099362F008040200099362F00804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F36D4D00F36D4D009936
      2F00000000000000000099362F00804020008040200099362F00000000000000
      0000FFFFFF00F36D4D00F36D4D0080402000FFFFFF00F36D4D00F36D4D009936
      2F00000000000000000099362F00804020008040200099362F00000000000000
      0000FFFFFF00F36D4D00F36D4D00804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F36D4D00F36D4D009936
      2F000000000099362F0000FF000000FF000000FF000000FF000099362F000000
      0000FFFFFF00F36D4D00F36D4D0080402000FFFFFF00F36D4D00F36D4D009936
      2F000000000099362F000080000000800000008000000080000099362F000000
      0000FFFFFF00F36D4D00F36D4D00804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F36D4D00C0C000009936
      2F0099362F0000FF000000FF000000FF000000FF000000FF000000FF00009936
      2F00FFFFFF00F36D4D00C0C0000080402000FFFFFF00F36D4D00C0C000009936
      2F0099362F000080000000800000008000000080000000800000008000009936
      2F00FFFFFF00F36D4D00C0C00000804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00EFB70000C0C000009936
      2F0099362F0000FF000000FF000000FF000000FF000000FF000000FF00008040
      200080402000C0C00000C0C0000080402000FFFFFF00EFB70000C0C000009936
      2F0099362F000080000000800000008000000080000000800000008000008040
      200080402000C0C00000C0C00000804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C00000C0C000009936
      2F0099362F0000FF000000FF000000FF000000FF000000FF000000FF00008040
      200080402000C0C00000C0C0000080402000FFFFFF00C0C00000C0C000009936
      2F0099362F000080000000800000008000000080000000800000008000008040
      200080402000C0C00000C0C00000804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C00000EAD999009936
      2F0099362F0000FF000000FF000000FF000000FF000000FF000000FF00009936
      2F00FFFFFF00C0C00000EAD9990080402000FFFFFF00C0C00000EAD999009936
      2F0099362F000080000000800000008000000080000000800000008000009936
      2F00FFFFFF00C0C00000EAD99900804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00EAD99900EAD999009936
      2F00FFFFFF0099362F0000FF000000FF000000FF000000FF000099362F00FFFF
      FF00FFFFFF00EAD99900EAD9990080402000FFFFFF00EAD99900EAD999009936
      2F00FFFFFF0099362F000080000000800000008000000080000099362F00FFFF
      FF00FFFFFF00EAD99900EAD99900804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00EAD99900EAD999009936
      2F0000000000FFFFFF0099362F00804020008040200099362F00FFFFFF000000
      0000FFFFFF00EAD99900EAD9990080402000FFFFFF00EAD99900EAD999009936
      2F0000000000FFFFFF0099362F00804020008040200099362F00FFFFFF000000
      0000FFFFFF00EAD99900EAD99900804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00EAD99900EAD999008040
      20000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00EAD99900EAD9990080402000FFFFFF00EAD99900EAD999008040
      20000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00EAD99900EAD99900804020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF000000000FF00FF0000000000C300C30000000000810081000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000008100810000000000C300C30000000000FF00FF000000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
