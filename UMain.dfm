object Form1: TForm1
  Left = 949
  Top = 346
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Countdown timer'
  ClientHeight = 60
  ClientWidth = 140
  Color = 43520
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ScreenSnap = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 140
    Height = 60
    Cursor = crDrag
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentBackground = True
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    object Label3: TLabel
      Left = 7
      Top = 0
      Width = 29
      Height = 21
      Caption = 'N/A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnMouseDown = Panel1MouseDown
    end
    object SpeedButton1: TSpeedButton
      Left = 91
      Top = 0
      Width = 30
      Height = 22
      Caption = 'Stop'
      Flat = True
      Visible = False
      OnClick = Button4Click
    end
    object Label2: TLabel
      Left = 5
      Top = 43
      Width = 26
      Height = 13
      Caption = 'Time:'
      OnMouseDown = Panel1MouseDown
    end
    object SpeedButton3: TSpeedButton
      Left = 125
      Top = -2
      Width = 15
      Height = 15
      Caption = 'x'
      Flat = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton2: TSpeedButton
      Left = 93
      Top = 0
      Width = 28
      Height = 28
      Hint = 'Settings'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDF9F9F9EBEBEBE0E0E0D9D9D9D4D4
        D4DBDBDBE5E5E5EBEBEBE8E8E8DCDCDCA4A4A4AEAEAEDBDBDBE6E6E6F2F2F2FC
        FCFCFFFFFFFDFDFDF3F3F3EAEAEAE5E5E5E6E6E6E4E4E4DDDDDDCFCFCFB6B6B6
        9293934A4D4E23252752504DBCBCBCC6C6C6C4C4C47C807F9098827C632C6D68
        60ADADADC5C5C5E2E2E2FCFCFCF0F0F0D0D0D0B2B2B2A9A9A9A9A9A9A9A9A9AB
        ABABB4B4B47577762D2D296E5F35B08D2F97712475726FD0D0D09C9E9D607168
        BAA54AE0C8585F5D4E5C5C5CCDCDCDE3E3E3F1F1F1D9D9D9BBBBBBA4A4A49D9D
        9D9A9A9A9C9C9CAFAFAFC5C5C5383A39A28840CFAC337D601F332C201C202129
        2C2D24292B8B7E4CD9BE496E745A3A3A2A2F2B1A696661FCFCFCF8F8F8EAEAEA
        D7D7D7CDCDCDCCCCCCC2C2C2B7B7B7BABABAC2C2C235363676592057492A2222
        1D2E2B1B35301C2C2A1C171B1F523E1F68684E3A3D3139341E39351F8E8B81FF
        FFFFFFFFFFFEFEFEFCFCFCFAFAFAFAFAFAF6F6F6F1F1F1EFEFEFC6C7C6575C58
        1A181838372D3A331E3B341D3A351F33301E1B1E1D1C1E1C29281C39341E3C37
        204A3F22897F6DFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4
        D6D5808C83A59F7E7159303C34213F371F3E371E3C361E3A341E3A351F3D3820
        3D37203B371F41391F9872248C6B28646360FFFFFFFFFFFFFFFFFFC4C6C66A6E
        709A9C9D8A8F8D69756C90886A957539AFA7823E3B2B3E371E3F381F5F5946A3
        A096D7D6D2E7E6E4837C6B4A412141391E4C3F1F25241E2F2C1DFFFFFFFFFFFF
        C5C7C74C5E597E6D3F45351C212525766B40906E318C8972545A513C361F504A
        33C4C2BBFDFDFDFFFFFFFFFFFFFEFEFE655D504A4123584D2F433B1F3C37203F
        3C25FFFFFFF9F9F85B5F578C7836D8BE496858341313145248326C786445493F
        3D3720736E5CF0F0EFFFFFFFFFFFFFFFFFFFFFFFFFECEBE94B3F204F3D206B5A
        38413A204440269D9A91FFFFFFDEDEDE635A38CAA22D686641484F46312E1E2C
        281A353220423C23969386FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAB4A6
        AB8F526E4E1C564B2B55503ADDDCD9FFFFFFFFFFFFF6F6F699855F9E85413638
        2E4B452D473F26453E23473F26AFADA2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD9DAD96C6041C49E49745B2B4B4326D8D7D4FFFFFFFFFFFFFFFFFFFFFFFF
        DFDEDD333128554F39524A2F4C4328494126969285FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFEEEFEF4D544F9F7E33A07A2B726747585541F9F9F9FFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFE85847F6159415C533750482C534B31F3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEDEDED979E94B5A367A7842F6059394840233C38
        1FBBBAB6FFFFFFFFFFFFFFFFFFF4F4F4A2A7A6484C4522252533322A544B2E91
        8D7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D3D28D9487C4AE6DDBBC5D7E8469
        433D24463F21615C46F6F6F6FFFFFFFFFFFFD3D4D3616A6674755A9377345846
        293E3B2D534A2CDBDAD6FFFFFFFFFFFFFEFEFEE1E2E27F84828C947FBFA255D1
        B1579C9A7C5551395C563B706B55EEEDECFFFFFFFFFFFFFFFFFF8E8E8D95834D
        D8B83F93711E49443361593F51482A949390AFB0B18D90924A4E5136342C9078
        43C19B3DAC9754666856534E35BEBCB4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEFEEEE77633F7F774C27251D544E37635839524829151717191B1E413626
        755826997227846324746B535F61524E4527D4D3CEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCACBCB57574B756B4D685D3D6357345D502D3A
        362016161431271C3F35232B29212B2C22463D21504420655E43FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE908A7C7C714E6A5F
        3D91712FA07E375B4E294F4421463C1E494021645A3D605636554720675D3ED9
        D8D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EDECEBC1BEB5E7E6E5AD925C7A6C3C5F532F584A246A5E3DD8D7D2FDFCFCE4E3
        E0BEBAAFF9F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C2BF5B533C5F5127665934E5E4E0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2DED8
        D5CDF4F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object ComboBox1: TComboBox
      Left = 83
      Top = 37
      Width = 48
      Height = 21
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        '0   min'
        '5   min'
        '10 min'
        '15 min'
        '20 min'
        '25 min'
        '30 min'
        '35 min'
        '40 min'
        '45 min'
        '50 min'
        '55 min')
    end
    object ComboBox2: TComboBox
      Left = 33
      Top = 37
      Width = 48
      Height = 21
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
      Text = '0 h'
      Items.Strings = (
        '0 h'
        '1 h'
        '2 h'
        '3 h'
        '4 h')
    end
    object ProgressBar1: TProgressBar
      Left = 7
      Top = 23
      Width = 114
      Height = 11
      TabOrder = 2
      Visible = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 136
    Top = 104
  end
  object XPManifest1: TXPManifest
    Left = 112
    Top = 104
  end
end
